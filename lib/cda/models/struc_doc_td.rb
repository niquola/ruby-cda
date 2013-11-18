class Cda::StrucDocTd < Cda::Base
  attribute :id, String, annotations: {:kind=>:attribute}
  attribute :language, String, annotations: {:kind=>:attribute}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute}
  attribute :abbr, String, annotations: {:kind=>:attribute}
  attribute :axis, String, annotations: {:kind=>:attribute}
  attribute :headers, Array[String], annotations: {:kind=>:attribute}
  attribute :scope, String
  attribute :rowspan, String, annotations: {:kind=>:attribute}
  attribute :colspan, String, annotations: {:kind=>:attribute}
  attribute :align, String
  attribute :char, String, annotations: {:kind=>:attribute}
  attribute :charoff, String, annotations: {:kind=>:attribute}
  attribute :valign, String
  attribute :_text, String
end
