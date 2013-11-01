require 'nokogiri'
require 'cgi'
require 'yaml'
require 'set'
require_relative 'gen'

module CcdGen
  extend self
  def templates
    doc = Nokogiri::XML.parse(File.open('xsd/Consolidation.xml')).remove_namespaces!
    doc.xpath("//Template")
  end

  def generate
    `rm -r lib/ccd`
    `mkdir lib/ccd`
    autoload_entries = []
    templates.each do |template|
      class_body = mk_class(template)
      class_name = class_name(template)
      class_file_name = File.join('lib/ccd', Gen::Namings.mk_class_fname(class_name))
      fwrite(class_file_name, class_body)
      autoload_entries << "autoload :#{class_name}, '#{class_file_name}'"
    end
    fwrite('lib/ccd/autoloads.rb', Gen::Codeg.gmodule('Ccd', autoload_entries.sort.join("\n")))
  end

  def mk_class(template)
    ancestor = '::Cda::' + Gen::Namings.mk_class_name(template[:contextType])
    title_comment = "##{template[:title]}\n"
    attributes = mk_attributes(constraints(template.xpath('./Constraint')))

    Gen::Codeg.gklass('Ccd', class_name(template), ancestor, title_comment + attributes)
  end

  def class_name(template)
    Gen::Namings.mk_ccd_class_name(template[:bookmark])
  end

  def mk_attributes(constraints)
    ''
  end

  def constraints(elems, level = 0)
    elems.map do |el|
      {
        element: el[:context],
        number: el[:number],
        level: level,
        cardinality: el[:cardinality],
        comment: comment(el),
        value_set: value_set(el),
        schematron_test: schematron_test(el),
        constraints: constraints(el.xpath('./Constraint'), level + 1)
      }.delete_if { |k, v| v.blank? }
    end
  end

  def schematron_test(el)
    if test = el.xpath('./SchematronTest').first
      #test.text.gsub(/&gt; | &lt;/x, "&gt;" => '>', "&lt;" => '<')
      CGI.unescapeHTML(test.text)
    end
  end

  def value_set(el)
    if vs = el.xpath('./ValueSet').first
      vs.attributes.reduce({}) { |a, (k,v)| a[k] = v.text; a }
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
