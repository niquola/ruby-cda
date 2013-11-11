module Gen::Namings
  def mk_class_name(name)
    name = name.sub('POCD_MT000040.','')
    name = name.sub(/^x_/, 'X')
    if (bt = base_type(name))
      return bt
    end

    return name if name == name.upcase

    names = name.split('.')
    if names.size > 1
      name = names.map { |x| mk_class_name(x) }.join('')
    end

    name[0] = name[0].upcase
    name
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

  def base_type(type)
    {
      'xs:string' => 'String',
      'xs:decimal' => 'Numeric',
      'xs:float' => 'Float',
      'xs:integer' => 'Integer',
      'xs:boolean' => 'String', # FIXME: Sound be boolean '::Virtus::Attribute::Boolean',
      'xs:base64Binary' => 'String',
      'xs:NMTOKEN' => 'String',
      'xs:NMTOKENS' => 'Array[String]',
      'xs:token' => 'String',
      'xs:anyURI' => 'String',
      'xs:double' => 'Float',
      'xs:ID' => 'String',
      'xs:IDREF' => 'String',
      'xs:IDREFS' => 'Array[String]',
    }[type]
  end

  def module_name(version, name=nil)
    "HealthSeven::V#{version.gsub('.', '_')}"
  end

  def normalize_name(name)
    name.gsub('/', '.').underscore
  end

  extend self
end
