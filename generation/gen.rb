require 'nokogiri'
require 'active_support/core_ext'

module Gen
  autoload :Meta, 'gen/meta.rb'
  autoload :Db, 'gen/db.rb'
  autoload :Namings, 'gen/namings.rb'
  autoload :Pth, 'gen/pth.rb'
  autoload :Codeg, 'gen/codeg.rb'

  def generate
    autoload_entries = []
    Db.full_db.each do |raw_name, xml|
      generate_class(raw_name, xml)
      autoload_entries << generate_autoload(raw_name)
    end
    txt = ['module Cda']
    txt.concat(autoload_entries)
    txt << 'end'
    fwrite('lib/cda/autoloads.rb', txt.join("\n"))
  end

  def generate_autoload(name)
    name = Namings.mk_class_name(name)
    file_name = class_file_name(name)
    "autoload :#{name}, 'cda/#{file_name}'"
  end

  def generate_class(raw_name, db)
    class_name = Namings.mk_class_name(raw_name)
    attributes = Meta.elements(db).map do |el|
      if el[:name].present?
        Codeg.generate_attribute(el[:name],
                                 Namings.mk_class_name(el[:type]),
                                 {})
      end
    end
    attributes << "#Attributes"
    attributes += Meta.attributes(db).map do |attr|
      if attr[:type].present?
        Codeg.generate_attribute(attr[:name],
                                 Namings.mk_class_name(attr[:type]),
                                 {})
      end
    end
    class_definition = Codeg.gklass('Cda', class_name, nil, attributes.compact.join("\n"))
    fwrite(Pth.base_path(class_file_name(class_name)), class_definition)
  end

  def class_file_name(class_name)
    class_name.underscore + '.rb'
  end

  def generate_part(dir, classes)
    ensure_directory_for(dir)
    write_classes_to_dir(dir, classes)
  end

  def write_classes_to_dir(dir, classes)
    classes.each do |class_name, code|
      fwrite(Pth.base_path(dir, "#{class_name.underscore}.rb"), code)
    end
  end

  def ensure_directory_for(dir)
    FileUtils.rm_rf(Pth.base_path(dir))
    FileUtils.mkdir_p(Pth.base_path(dir))
  end

  def datatypes(db)
    Db.datatypes_db
    .select { |n, t| Meta.complex_type?(t) && Meta.root_datatype?(n)}
    .each_with_object({}) do |(name, tp), acc|
    class_name = Namings.mk_class_name(name)
    acc[class_name] = Codeg.gklass(Namings.module_name,
                                   class_name,
                                   '::HealthSeven::DataType',
                                   generate_class_body(db, tp))
    end
  end

  def base_datatypes(db)
    Db.datatypes_db
    .select { |n, t| Meta.root_datatype?(n) && ! Meta.complex_type?(t)}
    .each_with_object({}) do |(name, tp), acc|
      class_name = Namings.mk_class_name(name)
      acc[class_name] = Codeg.gklass(Namings.module_name,
                                     class_name,
                                     '::HealthSeven::SimpleType',
                                     generate_class_body(db, tp))
    end
  end

  def fwrite(path, content)
    open(path, 'w'){|f| f<< content }
  end

  def generate_attribute_by_el_ref(db, el_ref)
    tp = Db.find_type_by_el(db, el_ref)
    Codeg.generate_attribute(
      Namings.normalize_name(Meta.type_desc(tp) || Meta.ref(el_ref) || Meta.name(el_ref), Meta.ref(el_ref) || Meta.name(el_ref)),
      Namings.mk_class_name(Meta.base_type(tp) || Meta.name(tp).split('.').first),
      meta_options(el_ref).merge(comment: Meta.type_desc(tp))
    )
  end

  def generate_class_recursively(db, tp)
    Meta.elements(tp).map do |el_ref|
      if Meta.ref(el_ref) == "ED"
        next "# TODO: Encapsulated data segment"
      elsif Meta.nested_type?(el_ref)
        type_class_name = Namings.mk_class_name(Meta.nested_type_name(el_ref))
        [
          Codeg.gklass(nil,
                       type_class_name,
                     '::HealthSeven::SegmentGroup',
                     generate_class_recursively(db, Db.find_type_by_el(db, el_ref))),
                     Codeg.generate_attribute(type_class_name.underscore, type_class_name, meta_options(el_ref))
        ].join("\n")
      else
        generate_attribute_by_el_ref(db, el_ref)
      end
    end.join("\n")
  end

  def meta_options(el_ref)
    # minOccurs: el_ref[:minOccurs] || "0",
    { position: Meta.ref(el_ref) }.tap do |res|
      res[:require] = true if el_ref[:minOccurs] && el_ref[:minOccurs] == '1'
      res[:multiple] = true if el_ref[:maxOccurs] == 'unbounded'
    end
  end

  def generate_class_body(db, tp)
    Meta.elements(tp).map do |el_ref|
      if Meta.ref(el_ref) == "ED"
        next "# TODO: Encapsulated data segment"
      end
      generate_attribute_by_el_ref(db, el_ref)
    end.compact.join("\n")
  end

  def autoloads(dir)
    lines =["module #{Namings.module_name}"]
    lines<<["  base_dir = File.dirname(__FILE__)"]
    lines<< Dir[dir + "/*.rb"].sort.map do |file|
      file_basename = File.basename(file, '.rb')
      rel_path = "#{File.basename(dir)}/#{file_basename}"
      class_name = Namings.mk_class_name(file_basename)
    "  autoload :#{class_name}, base_dir + '/#{rel_path}'"
    end
    lines<<"end"
    lines.join("\n")
  end

  def generate_autoloads_by_dir(dir)
    fwrite(Pth.base_path("#{dir}.rb"),
           autoloads(Pth.base_path(dir)))
  end

  extend self
end
