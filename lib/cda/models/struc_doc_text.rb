class Cda::StrucDocText < Cda::Base
  attribute :id, String, annotations: {:kind=>:attribute}
  attribute :language, String, annotations: {:kind=>:attribute}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute}
  attribute :media_type, String, annotations: {:kind=>:attribute}
  attribute :_text, String
end
