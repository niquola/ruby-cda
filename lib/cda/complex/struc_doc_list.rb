class Cda::StrucDocList < Cda::Base
  attribute :id, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :caption, Cda::StrucDocCaption, annotations: {:class=>"Cda::StrucDocCaption"}
  attribute :item, Array[Cda::StrucDocItem], annotations: {:multiple=>true, :class=>"Cda::StrucDocItem"}
  attribute :language, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :list_type, String, annotations: {:class=>"String"}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute, :class=>"Array[String]"}
end
