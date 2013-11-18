class Cda::StrucDocList < Cda::Base
  attribute :caption, Cda::StrucDocCaption
  attribute :item, Array[Cda::StrucDocItem], annotations: {:multiple=>true}
  attribute :id, String, annotations: {:kind=>:attribute}
  attribute :language, String, annotations: {:kind=>:attribute}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute}
  attribute :list_type, String
end
