class Cda::StrucDocTd
  include Virtus.model
  attribute :id, String, annotations: {:kind=>:attribute}
  attribute :abbr, String, annotations: {:kind=>:attribute}
  attribute :align, String
  attribute :axis, String, annotations: {:kind=>:attribute}
  attribute :char, String, annotations: {:kind=>:attribute}
  attribute :charoff, String, annotations: {:kind=>:attribute}
  attribute :colspan, String, annotations: {:kind=>:attribute}
  attribute :headers, Array[String], annotations: {:kind=>:attribute}
  attribute :language, String, annotations: {:kind=>:attribute}
  attribute :rowspan, String, annotations: {:kind=>:attribute}
  attribute :scope, String
  attribute :style_code, Array[String], annotations: {:kind=>:attribute}
  attribute :valign, String
end
