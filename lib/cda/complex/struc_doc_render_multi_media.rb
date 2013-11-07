class Cda::StrucDocRenderMultiMedia
  include Virtus.model
  attribute :id, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :caption, Cda::StrucDocCaption, annotations: {:class=>"Cda::StrucDocCaption"}
  attribute :language, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :referenced_object, Array[String], annotations: {:kind=>:attribute, :class=>"Array[String]"}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute, :class=>"Array[String]"}
end
