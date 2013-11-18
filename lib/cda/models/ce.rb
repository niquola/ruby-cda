class Cda::CE < Cda::CD
  attribute :original_text, Cda::ED
  attribute :qualifier, Cda::CR
  attribute :translation, Array[Cda::CD], annotations: {:multiple=>true}
  attribute :code, String, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :code_system, Cda::Uid, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :code_system_name, Cda::St, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :code_system_version, Cda::St, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :display_name, Cda::St, annotations: {:use=>:optional, :kind=>:attribute}
end
