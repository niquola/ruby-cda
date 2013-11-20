module Gen::Namings
  def mk_class_name(name)
    name = name.sub('POCD_MT000040.','')
    name = name.sub(/^x_/, 'X')

    if Gen::Types.type_mapped?(name)
      Gen::Types.map_type(name)
    else
      return name if name == name.upcase

      names = name.split('.')

      if names.size > 1
        name = names.map { |x| mk_class_name(x) }.join('')
      end

      name[0] = name[0].upcase
      name
    end
  end

  def mk_class_fname(class_name)
    class_name.underscore + '.rb'
  end

  def mk_ccd_class_name(name)
    name.sub(/^[A-Z]_/,'').split(/[()_]/).map { |chunk|
      chunk[0] = chunk[0].upcase if chunk != ''
      chunk
    }.join
  end


  def normalize_name(name)
    name.gsub('/', '.').underscore
  end

  extend self
end
