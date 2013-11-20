$LOAD_PATH.unshift(File.expand_path('../../lib', __FILE__))

require 'nokogiri'
require 'cgi'
require 'yaml'
require 'set'
require_relative 'cda_gen'
require 'cda'

module CcdGen
  extend self

  Context = Struct.new(:class_name, :owning_class, :parent_path)

  def templates
    doc.xpath("//Template")
  end

  def doc
    Nokogiri::XML.parse(File.open('xsd/Consolidation.xml')).remove_namespaces!
  end

  def generate
    prefix = 'lib/ccd/models'
    `rm -fr #{prefix}`
    `mkdir -p #{prefix}`

    autoload_entries = []
    registry_entries = []
    templates.each do |template|
      class_name = class_name(template)
      class_file_name = File.join("#{prefix}/", Gen::Namings.mk_class_fname(class_name))
      class_body = mk_class(template, File.basename(class_file_name))
      fwrite(class_file_name, class_body)
      autoload_entries << "autoload :#{class_name}, '#{class_file_name.sub(/^lib\//, '')}'"
      registry_entries << "add('#{template['oid']}', Ccd::#{class_name})"
    end

    fwrite('lib/ccd/autoloads.rb', Gen::Codeg.gmodule('Ccd', autoload_entries.sort.join("\n")))
    fwrite('lib/ccd/_registry.rb', registry_entries.join("\n"))
  end

  def mk_class(template, filename)
    ancestor = '::Cda::' + Gen::Namings.mk_class_name(template[:contextType])
    include_dsl = "extend ::Ccd::Dsl\n"
    context = Context.new(class_name(template), ancestor.constantize, [])
    attributes = mk_constraints(context, template.xpath('./Constraint'))
    extension = "Ccd.load_extension('#{filename}')"

    template_type = if template[:context].present?
                      "def self.template_type\n  #{template[:context].inspect}\nend\n"
                    else
                      nil
                    end

    body = [include_dsl, attributes, template_type, extension].join("\n")

    Gen::Codeg.gklass(class_name(template),
                      module: 'Ccd',
                      ancestor: ancestor,
                      body: body)
  end

  def class_name(template)
    Gen::Namings.mk_ccd_class_name(template[:bookmark])
  end

  def mk_constraints(context, constraints)
    constraints.map { |c| mk_constraint(context, c) }.flatten.join("\n")
  end

  def mk_constraint(context, constraint)
    def_constraint(context, constraint).map do |definition|
      definition[:comments].map { |c| "# #{c}" } +
        ["constraint '#{definition[:name]}', #{definition[:params].inspect}\n"]
    end
  end

  def def_constraint(context, constraint)
    return [] unless constraint_useful?(constraint)

    attribute_name = name(constraint)
    #puts "[#{constraint[:number]}] #{context.owning_class.name}.#{attribute_name}"
    path = attribute_name ? context.parent_path + attribute_name.split('.') : context.parent_path
    name = path.join('.')
    comments = comments(constraint)
    params = {}

    if (card = constraint[:cardinality])
      params.merge! cardinality: card
    end

    declared_attribute_class = get_attribute_class(context.owning_class, path - context.parent_path)
    attribute_class = match_class(constraint, declared_attribute_class)
    #puts "#{declared_attribute_class.name} => #{attribute_class.name}"
    if (value = value(constraint))
      value.merge!(_type: attribute_class.name) if attribute_class != declared_attribute_class
      params.merge! value: value
      name = patch_name(context.class_name, name)
    end

    acc = [{
             name: name,
             params: params,
             comments: comments,
           }]

    constraint_context = Context.new(context.class_name, attribute_class, path)
    constraint.xpath('./Constraint').reduce(acc) do |acc, c|
      child_constraints = def_constraint(constraint_context, c)

      typed_constraints = child_constraints.select do |c|
        p = c[:params][:value]
        p.is_a?(Hash) && c[:name].ends_with?('.code') && attribute_class <= Cda::CD
      end

      if typed_constraints.size > 1
        raise "I'm expecting one typed constraint, but got #{typed_constraints.size}:\n#{typed_constraints.inspect}"
      end

      if typed_constraints.first
        tc = typed_constraints.first
        child_constraints.delete(tc)

        acc.first[:params][:value] = tc[:params][:value]
      end

      acc.concat child_constraints
    end

    acc.compact
  end

  TYPE_MATCHING_PATTERNS = [
    [Cda::IVL_TS, has_constraints_on: %w(low high)],
    [Cda::CD, by_xpath: 'SingleValueCode/@code'],
  ].freeze

  def match_class(constraint, declared_class)
    if (data_type = constraint[:dataType])
      return String if data_type == 'UID'
      return "Cda::#{Gen::Namings.mk_class_name(data_type)}".constantize
    end
    matching_pattern = TYPE_MATCHING_PATTERNS.find do |cls, pattern|
      match_by(constraint, pattern.merge(from: declared_class, to: cls))
    end
    return matching_pattern[0] if matching_pattern
    declared_class
  end

  def match_by(constraint, opts)
    from_class = opts[:from]
    to_class = opts[:to]
    required_constraints = opts[:has_constraints_on]
    xpath = opts[:by_xpath]
    return nil unless to_class < from_class
    constraint_names = constraint.xpath('./Constraint').map { |c| name(c) }
    return nil if required_constraints && !(required_constraints - constraint_names).empty?
    return nil if xpath && constraint.xpath(xpath).empty?
    to_class
  end

  def get_attribute_class(owning_class, attribute_path)
    return owning_class if attribute_path.empty?
    attribute_name = attribute_path[0]
    attribute = owning_class.attribute_set[attribute_name.to_sym]
    type = attribute.respond_to?(:member_type) ? attribute.member_type : attribute.type
    get_attribute_class(type.primitive, attribute_path[1..-1])
  end

  IGNORED_CONSTRAINTS = [
    9431, 7589, 10494, # duplicated constraints
    9368 # constraints on non-existing attributes
  ]

  def constraint_useful?(constraint)
    # Possible combinations of conformance and cardinality:
    # "SHALL"  => {"1..1", nil, "1..*", "1..4", "0..1"}
    # "SHOULD" => {"0..1", nil, "0..*"}
    # "MAY"    => {"0..1", "0..*", nil, "1..*"}
    # nil      => {nil, "0..0", "1..1"}

    card = constraint[:cardinality]
    conf = constraint[:conformance]

    !IGNORED_CONSTRAINTS.include?(constraint[:number].to_i) &&
      (conf == "SHALL" && ['1..1', '1..*', '1..4'].include?(card))
  end

  def comments(constraint)
    ['./Description', './NarrativeText'].map do |xp|
      constraint.xpath(xp).first.try(:text)
    end.compact
  end

  def name(el)
    return nil if el[:context].nil?

    Gen::Namings.normalize_name(el[:context].sub('@', ''))
  end

  def schematron_test(el)
    if test = el.xpath('./SchematronTest').first
      #test.text.gsub(/&gt; | &lt;/x, "&gt;" => '>', "&lt;" => '<')
      CGI.unescapeHTML(test.text).gsub("\n", ' ')
    end
  end

  def value(constraint)
    if vc = constraint.xpath('./SingleValueCode').first
      value = {code: vc['code'], display_name: vc['displayName']}

      if cs = constraint.xpath('./CodeSystem').first
        value.merge! code_system: cs['oid']
      end

      value.delete_if { |k, v| v.nil? }

      normalize_value(constraint, value)
    end
  end

  def normalize_value(constraint, v)
    plain_code_contexts = ["@classCode", '@moodCode', '@typeCode']

    if plain_code_contexts.include?(constraint[:context]) ||
      v.keys == [:code] ||
      root_template_id?(constraint)
      v[:code]
    else
      v
    end
  end

  def root_template_id?(constraint)
    constraint['context'] == '@root'
  end

  def notice_once(value, key)
    @keys ||= {}
    puts value unless @keys.key?(key)
    @keys[key] = value
  end

  def comment(el)
    if nt = el.xpath('./NarrativeText').first
      nt.text
    end
  end

  def patch_name(class_name, name)
    case [class_name, name]
      when ['PolicyActivity', 'performer']
        'performer.type_code'
      when ['USRealmHeader', 'realm_code']
        'realm_code.code'
      else
        name
    end
  end

  def fwrite(path, body)
    File.open(path, 'w') do |f|
      f.puts(body)
    end
  end
end
