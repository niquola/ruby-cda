module Gen::Types
  MAPPINGS = {
    'int'             => "Integer",
    'ts'              => 'Timestamp',
    'st'              => 'String',
    'cs'              => 'String',
    'bl'              => 'Boolean',
    'bn'              => 'Boolean',
    'uid'             => 'String',
    'real'            => 'Float',
    'xs:string'       => 'String',
    'xs:decimal'      => 'Numeric',
    'xs:float'        => 'Float',
    'xs:integer'      => 'Integer',
    'xs:boolean'      => 'Boolean',
    'xs:base64Binary' => 'String',
    'xs:NMTOKEN'      => 'String',
    'xs:NMTOKENS'     => 'Array[String]',
    'xs:token'        => 'String',
    'xs:anyURI'       => 'String',
    'xs:double'       => 'Float',
    'xs:ID'           => 'String',
    'xs:IDREF'        => 'String',
    'xs:IDREFS'       => 'Array[String]',
  }

  def type_mapped?(type)
    MAPPINGS.key?(type)
  end

  def map_type(cda_type)
    MAPPINGS.fetch(cda_type, cda_type)
  end

  extend self
end
