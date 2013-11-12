require 'nokogiri'
require 'cgi'
require 'yaml'
require 'set'
require_relative 'gen'

module CcdGen
  extend self
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
    templates.each do |template|
      class_name = class_name(template)
      class_file_name = File.join("#{prefix}/", Gen::Namings.mk_class_fname(class_name))
      class_body = mk_class(template, File.basename(class_file_name))
      fwrite(class_file_name, class_body)
      autoload_entries << "autoload :#{class_name}, '#{class_file_name.sub(/^lib\//, '')}'"
    end

    fwrite('lib/ccd/autoloads.rb', Gen::Codeg.gmodule('Ccd', autoload_entries.sort.join("\n")))
  end

  def mk_class(template, filename)
    ancestor = '::Cda::' + Gen::Namings.mk_class_name(template[:contextType])
    include_dsl = "extend ::Ccd::Dsl"
    attributes = mk_attributes(class_name(template), template.xpath('./Constraint'))
    extension = "Ccd.load_extension('#{filename}')"
    body = [include_dsl, attributes, extension].join("\n")

    Gen::Codeg.gklass(class_name(template),
                      module: 'Ccd',
                      ancestor: ancestor,
                      body: body)
  end

  def class_name(template)
    Gen::Namings.mk_ccd_class_name(template[:bookmark])
  end

  def mk_attributes(class_name, constraints)
    constraints.map { |c| mk_attribute(class_name, c) }.flatten.join("\n")
  end

  def mk_attribute(class_name, constraint, name = nil)
    name = [name, name(constraint)].compact.join('.')
    old_name = name
    comments = comments(constraint)
    params = {}

    if card = constraint[:cardinality]
      params.merge! cardinality: card
    end

    if value = value(constraint)
      params.merge! value: value
      name = patch_name(class_name, name)
    end

    unless constraint_useful?(constraint)
      []
    else
      definition = ["'#{name}'", pretty_hash(params)].join(', ')
      acc = comments.map { |c| "# #{c}" }
      acc << "constraint #{definition}\n"

      constraint.xpath('./Constraint').reduce(acc) do |acc, c|
        acc << mk_attribute(class_name, c, old_name)
      end

      acc.compact
    end
  end

  IGNORED_CONSTRAINTS = [
    9431, 7589, 10494
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

  def pretty_hash(hash)
    hash.inspect
  end

  def comments(constraint)
    ['./Description', './NarrativeText'].map do |xp|
      constraint.xpath(xp).first.try(:text)
    end.compact
  end

  def name(el)
    return nil if el[:context].nil?

    Gen::Namings.normalize_name(el[:context].sub('@',''))
  end

  def schematron_test(el)
    if test = el.xpath('./SchematronTest').first
      #test.text.gsub(/&gt; | &lt;/x, "&gt;" => '>', "&lt;" => '<')
      CGI.unescapeHTML(test.text).gsub("\n", ' ')
    end
  end

  def value(constraint)
    if vc = constraint.xpath('./SingleValueCode').first
      value = { code: vc['code'], display_name: vc['displayName'] }

      if cs = constraint.xpath('./CodeSystem').first
        value.merge! code_system: cs['oid']
      end

      value.delete_if{ |k, v| v.nil? }

      if value.keys.to_set == [:code, :display_name, :code_system].to_set
        value.merge! _type: 'Cda::CV'
      end

      if value.keys == [:code] || root_template_id?(constraint)
        value[:code]
      else
        value
      end
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
    File.open(path, 'w') do |f| f.puts(body) end
  end
end
