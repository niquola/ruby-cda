require 'nokogiri'
require 'active_support/core_ext'

module Gen
  autoload :Meta, 'gen/meta.rb'
  autoload :Db, 'gen/db.rb'
  autoload :Namings, 'gen/namings.rb'
  autoload :Pth, 'gen/pth.rb'
  autoload :Codeg, 'gen/codeg.rb'
  autoload :Types, 'gen/types.rb'

  def generate
    cleanup
    db = Db.full_db
    definitions = db[:types].map do |raw_name, xml|
      define_class(raw_name, xml, db[:elements], all_types: db[:types])
    end.reject do |definition|
      Types.type_mapped?(definition[:name])
    end.sort_by do |node|
      case node[:type]
      when :simple  then 0
      when :complex then 1
      else 2
      end
    end
    # fwrite 'types.txt', db[:types].keys.sort_by(&:upcase).join("\n")
    definitions.each do |definition|
      class_name = Namings.mk_class_name(definition[:name])
      full_class_name = 'Cda::' + class_name
      ancestor = if definition[:ancestor].present?
                   if class_name == 'CV'
                     'Cda::ANY' #workaround to break circular dependency
                   else
                     ancestor = Namings.mk_class_name(definition[:ancestor])
                     unless Codeg.stdlib_type?(ancestor)
                       ancestor = 'Cda::' + ancestor
                     end
                     ancestor
                   end
                 end
      plain_text = Codeg.gklass(full_class_name,
                                ancestor: ancestor) do |number_of_indentation|
        attributes = definition.try(:[], :attributes) || []
        attributes.map do |attribute|
          indent = ' ' * (number_of_indentation)
          indent + attribute
        end.join("\n")
      end
      path = Pth.models_path.join(class_file_name(class_name))
      fappend(path, plain_text)
    end
    autoload_entries = definitions.reduce([]) do |accumulator, definition|
      register_class(definition[:name], accumulator)
    end
    generate_autoloads(autoload_entries.sort)
  end

  def define_class(raw_name, xml, elemsdb, opts = {})
    if xml.name == 'complexType'
      ancestor = xml.xpath('./complexContent/extension|./complexContent/restriction').first.try :[], :base
      {
        ancestor: ancestor,
        type: :complex,
        attributes: attributes(raw_name, xml, elemsdb)
      }
    elsif xml.name == 'simpleType'
      case
      when restriction = xml.xpath('./restriction').first
        { ancestor: restriction[:base] }
      when list = xml.xpath('./list').first
        { ancestor: list[:itemType], multiple: true }
      when union = xml.xpath('./union').first
        ancestor_type = case union.attributes['memberTypes'].value
                        when /decimal/, /double/
                          'Float'
                        when /string/
                          'String'
                        else
                          'String'
                        end
        { ancestor: ancestor_type, union: union[:memberTypes] }
      end.merge(type: :simple)
    else
      raise xml.name
    end.merge(name: raw_name)
  end

  def cleanup
    FileUtils.rm_f(Pth.autoloads_file_path)
    FileUtils.rm_rf(Pth.models_path)
    FileUtils.mkdir_p(Pth.models_path)
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

  def register_class(name, accumulator)
    name = Namings.mk_class_name(name)
    file_name = class_file_name(name)
    accumulator << "autoload :#{name}, '#{Pth.to_relative(Pth.models_path.join(file_name))}'"
  end

  def generate_autoloads(entries)
    fwrite(Pth.autoloads_file_path, Codeg.gmodule('Cda', entries.join("\n")))
  end

  def attributes(raw_name, xml, elemsdb, opts = {})
    elements = Meta.elements(xml).map { |el|
      if ref = Meta.ref(el)
        process_reference(ref, elemsdb)
      else
        process_element(el)
      end
    }

    attributes = Meta.attributes(xml).map { |attr| process_attribute(attr) }
    elements = merge_elements(elements)
    attributes << text_attribute if Meta.mixed?(xml)

    (elements + attributes).compact.map do |a|
      Codeg.generate_attribute(*a)
    end
  end

  def merge_elements(els)
    els.reverse.uniq { |el| el.first }.reverse
  end

  def text_attribute
    ['_text', 'String', {}]
  end

  def process_element(el)
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
      if el[:maxOccurs] == 'unbounded'
        opts[:multiple] = true
        opts[:annotations] = { multiple: true }
      end
      opts.deep_merge!(annotations: {use: el[:use].to_sym}) if el[:use]
    end
  end

  def rmns(type)
    type.split(':').last
  end

  def process_attribute(attr)
    if attr[:type].present?
      [
        attr[:name],
        Namings.mk_class_name(attr[:type]),
        meta_options(attr).deep_merge(annotations: { kind: :attribute }),
      ]
    elsif (st = Meta.simple_type(attr))
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
    create_dir_for_path(path)
    open(path, 'w') { |f| f << content }
  end

  def fappend(path, content)
    create_dir_for_path(path)
    open(path, 'a') { |f| f.puts content }
  end

  def create_dir_for_path(path)
    dir = File.dirname(path)

    unless File.directory?(dir)
      FileUtils.mkdir_p(dir)
    end
  end

  extend self
end
