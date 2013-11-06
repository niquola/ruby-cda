class Cda::StrucDocList
  include Virtus.model
  attribute :id, String, annotations: {:kind=>:attribute}
  attribute :caption, Cda::StrucDocCaption
  attribute :item, Array[Cda::StrucDocItem]
  attribute :language, String, annotations: {:kind=>:attribute}
  attribute :list_type, String
  attribute :style_code, Array[String], annotations: {:kind=>:attribute}
end
