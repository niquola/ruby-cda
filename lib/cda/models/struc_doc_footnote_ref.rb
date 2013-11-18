class Cda::StrucDocFootnoteRef < Cda::Base
  attribute :id, String, annotations: {:kind=>:attribute}
  attribute :language, String, annotations: {:kind=>:attribute}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute}
  attribute :idref, String, annotations: {:use=>:required, :kind=>:attribute}
end
