class Cda::StrucDocList < Cda::Base
  attribute :caption, Cda::StrucDocCaption, annotations: {:class=>"Cda::StrucDocCaption"}
  attribute :item, Array[Cda::StrucDocItem], annotations: {:multiple=>true, :class=>"Cda::StrucDocItem"}
  attribute :id, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :language, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute, :class=>"Array[String]"}
  attribute :list_type, String, annotations: {:class=>"String"}
end
