class Cda::StrucDocTitleContent < Cda::Base
  attribute :id, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :language, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute, :class=>"Array[String]"}
  attribute :_text, String, annotations: {:class=>"String"}
end
