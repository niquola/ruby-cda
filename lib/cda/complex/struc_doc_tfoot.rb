class Cda::StrucDocTfoot
  include Virtus.model
  attribute :id, String, annotations: {:kind=>:attribute}
  attribute :align, String
  attribute :char, String, annotations: {:kind=>:attribute}
  attribute :charoff, String, annotations: {:kind=>:attribute}
  attribute :language, String, annotations: {:kind=>:attribute}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute}
  attribute :tr, Cda::StrucDocTr
  attribute :valign, String
end
