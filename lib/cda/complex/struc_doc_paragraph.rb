class Cda::StrucDocParagraph
  include Virtus.model
  attribute :id, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :caption, Cda::StrucDocCaption, annotations: {:class=>"Cda::StrucDocCaption"}
  attribute :language, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute, :class=>"Array[String]"}
end
