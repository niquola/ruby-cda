class Cda::StrucDocCol < Cda::Base
  attribute :id, String, annotations: {:kind=>:attribute}
  attribute :language, String, annotations: {:kind=>:attribute}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute}
  attribute :span, String, annotations: {:kind=>:attribute}
  attribute :width, String, annotations: {:kind=>:attribute}
  attribute :align, String
  attribute :char, String, annotations: {:kind=>:attribute}
  attribute :charoff, String, annotations: {:kind=>:attribute}
  attribute :valign, String
end
