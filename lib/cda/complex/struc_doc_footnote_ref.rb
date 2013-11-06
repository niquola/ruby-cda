class Cda::StrucDocFootnoteRef
  include Virtus.model
  attribute :id, String, annotations: {:kind=>:attribute}
  attribute :idref, String, annotations: {:kind=>:attribute}
  attribute :language, String, annotations: {:kind=>:attribute}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute}
end
