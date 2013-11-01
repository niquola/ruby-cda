require 'nokogiri'
require 'active_support/core_ext'

module Gen
  autoload :Meta, 'gen/meta.rb'
  autoload :Db, 'gen/db.rb'
  autoload :Namings, 'gen/namings.rb'
  autoload :Pth, 'gen/pth.rb'
  autoload :Codeg, 'gen/codeg.rb'

  def generate
    cleanup
    db = Db.full_db
    definitions = db[:types].map do |raw_name, xml|
      define_class(raw_name, xml, db[:elements])
    end
    # fwrite 'types.txt', db[:types].keys.sort_by(&:upcase).join("\n")
    definitions.sort_by do |node|
      case node[:type]
      when :simple  then 0
      when :complex then 1
      else 2
      end
    end.each do |definition|
      class_name = Namings.mk_class_name definition[:name]
      ancestor = if definition[:ancestor].present?
                   Namings.mk_class_name(definition[:ancestor])
                 end
      plain_text = Codeg.gklass('Cda', class_name, ancestor) do
        definition.try(:[], :attributes) || []
      end
      fappend(Pth.base_path(class_file_name(class_name)), plain_text)
    end
    generate_autoloads(db[:types].keys.sort.reduce([]) { |autoload_entries, raw_name|
      register_class(raw_name, autoload_entries)
    })
  end

  def define_class(raw_name, xml, elemsdb)
    if xml.name == 'complexType'
      ancestor = xml.xpath('.//extension|.//restriction').first.try :[], :base
      {
        ancestor: ancestor,
        type: :complex,
        attributes: attributes(xml, elemsdb)
      }
    elsif xml.name == 'simpleType'
      case
      when restriction = xml.xpath('./restriction').first
        { ancestor: restriction[:base] }
      when list = xml.xpath('./list').first
        { ancestor: list[:itemType], multiple: true }
      when union = xml.xpath('./union').first
        { ancestor: nil, union: union[:memberTypes] } #.split(/\s+/).first }
      end.merge(type: :simple)
    else
      raise xml.name
    end.merge(name: raw_name)
  end

  def cleanup
    `rm -r lib/cda`
    `mkdir lib/cda`
  end

  def inference(types)
    acc = types.reduce({}) do |acc, (name, xml)|
      acc[name] = if xml.name == 'simpleType'
                    case
                    when restriction = xml.xpath('./restriction').first
                      { name: restriction[:base] }
                    when list = xml.xpath('./list').first
                      { name: list[:itemType], multiple: true }
                    when union = xml.xpath('./union').first
                      { name: union[:memberTypes].split(/\s+/).first }
                    end
                  end
      acc
    end

    find = ->(k) { (t = acc[k]) ? find[t[:name]] : k }
    acc.each { |k, v|
      if (f = find[k]) && f != k
        puts 'f: %s; k: %s; a[f]: %s' % [f, k, acc[f]].map(&:inspect)
        acc[k] = { name: f, multiple: acc[f].try(:[], :multiple) || acc[k][:multiple] }
      end
    }
  end

  def register_class(name, acc)
    name = Namings.mk_class_name(name)
    file_name = class_file_name(name)
    acc << "autoload :#{name}, 'cda/#{file_name}'"
  end

  def generate_autoloads(entries)
    fwrite('lib/cda/autoloads.rb', Codeg.gmodule('Cda', entries.join("\n")))
  end

  def attributes(xml, elemsdb)
    elements = Meta.elements(xml).map { |el|
      if ref = Meta.ref(el)
        process_reference(ref, elemsdb)
      else
        process_element(el)
      end
    }
    attributes = Meta.attributes(xml).map { |attr| process_attribute(attr) }

    (elements + attributes).compact.sort_by(&:first).map do |a|
      Codeg.generate_attribute(*a)
    end
  end

  def logsimple(el, header)
    if Meta.simple_type?(el)
      fappend('lib/cda/simple.xml', [header, el.to_xml].join("\n"))
    end
  end

  def process_element(el)
    logsimple(el, 'element')
    [Meta.name(el), Namings.mk_class_name(rmns Meta.type(el)), meta_options(el)]
  end

  def process_reference(ref, elemsdb)
    if el = elemsdb[rmns(ref)]
      process_element el
    else
      raise "Not found: #{ref.inspect}"
    end
  end

  def meta_options(el)
    {}.tap do |opts|
      opts[:multiple] = true if el[:maxOccurs] == 'unbounded'
    end
  end

  def rmns(type)
    type.split(':').last
  end

  def process_attribute(attr)
    # logsimple(attr, 'attribute')
    if attr[:type].present?
      [
       attr[:name],
       Namings.mk_class_name(attr[:type]),
       meta_options(attr).merge(annotations: { kind: :attribute })
      ]
    elsif st = Meta.simple_type(attr)
      # fappend 'attributes.xml', st.to_xml
      [
       attr[:name],
       Namings.mk_class_name(st[:base]),
       {}
      ]
    end
  end

  def class_file_name(class_name)
    class_name.underscore + '.rb'
  end

  def fwrite(path, content)
    open(path, 'w') { |f| f << content }
  end

  def fappend(path, content)
    open(path, 'a') { |f| f.puts content }
  end

  extend self
end
