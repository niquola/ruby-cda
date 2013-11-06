class Cda::StrucDocParagraph
  include Virtus.model
  attribute :id, String, annotations: {:kind=>:attribute}
  attribute :caption, Cda::StrucDocCaption
  attribute :language, String, annotations: {:kind=>:attribute}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute}
end
