class Cda::StrucDocTh < Cda::Base
  attribute :id, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :language, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute, :class=>"Array[String]"}
  attribute :abbr, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :axis, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :headers, Array[String], annotations: {:kind=>:attribute, :class=>"Array[String]"}
  attribute :scope, String, annotations: {:class=>"String"}
  attribute :rowspan, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :colspan, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :align, String, annotations: {:class=>"String"}
  attribute :char, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :charoff, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :valign, String, annotations: {:class=>"String"}
  attribute :_text, String, annotations: {:class=>"String"}
end
