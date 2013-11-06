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
    attributes = mk_attributes(template.xpath('./Constraint'))
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

  def mk_attributes(constraints)
    constraints.map { |c| mk_attribute(c) }.flatten.join("\n")
  end

  def dump
    templates.map do |template|
      {
        name: (template[:bookmark]),
        ancestor: template[:contextType],
        constraints: constraints(template.xpath('./Constraint'))
      }
    end
  end

  def mk_attribute(constraint, name = nil)
    name = [name, name(constraint)].compact.join('.')
    comments = [comment(constraint)]
    params = ["'#{name}'"]

    if card = constraint[:cardinality]
      params << "cardinality: '#{card}'"
    end

    if sch = schematron_test(constraint)
      #comments << "schematron_test: %Q{#{sch}}"
    end

    if vc = single_value_code(constraint)
      params << "value: '#{vc}'"
    end

    acc = comments.map { |c| "##{c}" }
    acc << "constraint #{params.join(', ')}\n"

    constraint.xpath('./Constraint').reduce(acc) do |acc, c|
      acc << mk_attribute(c, name)
    end

    acc.compact
  end

  def comment(constraint)
    constraint.xpath('./NarrativeText').first.try(:text)
  end

  def name(el)
    return nil if el[:context].nil?
    el[:context].sub('@','')
  end

  def constraints(elems, level = 0)
    elems.map do |el|
      {
        element: el[:context],
        number: el[:number],
        level: level,
        cardinality: el[:cardinality],
        comment: comment(el),
        schematron_test: schematron_test(el),
        values: values(el),
        constraints: constraints(el.xpath('./Constraint'), level + 1)
      }.delete_if { |k, v| v.blank? }
    end
  end

  def schematron_test(el)
    if test = el.xpath('./SchematronTest').first
      #test.text.gsub(/&gt; | &lt;/x, "&gt;" => '>', "&lt;" => '<')
      CGI.unescapeHTML(test.text).gsub("\n", ' ')
    end
  end

  def single_value_code(constraint)
    if vc = constraint.xpath('./SingleValueCode | ./ValueSet').first
      notice_once(vc.inspect, 'single_value_code')
      vc['code']
    end
  end

  def value_set(constraint)
    if vs = constraint.xpath('./ValueSet').first
      vs['oid']
    end
  end

  def notice_once(value, key)
    @keys ||= {}
    puts value unless @keys.key?(key)
    @keys[key] = value
  end

  def values(el)
    el.xpath('./*[not(self::Constraint)]').reduce(Hash.new { |h, k| h[k] = {}}) do |acc, node|
      acc[node.name][:text] = node.text if node.text.present?
      attrs = node.attributes.reduce({}) { |acc, (k, attr)| acc[attr.name] = attr.value; acc }
      if attrs.present?
        acc[node.name][:attributes] = attrs
      end
      acc
    end
  end

  def comment(el)
    if nt = el.xpath('./NarrativeText').first
      nt.text
    end
  end

  def fwrite(path, body)
    File.open(path, 'w') do |f| f.puts(body) end
  end
end
