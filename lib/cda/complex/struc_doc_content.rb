class Cda::StrucDocContent
  include Virtus.model
  attribute :id, String, annotations: {:kind=>:attribute}
  attribute :language, String, annotations: {:kind=>:attribute}
  attribute :revised, String
  attribute :style_code, Array[String], annotations: {:kind=>:attribute}
end
