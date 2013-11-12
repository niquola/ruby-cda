class Cda::StrucDocLinkHtml < Cda::Base
  attribute :name, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :href, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :rel, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :rev, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :title, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :id, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :language, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute, :class=>"Array[String]"}
  attribute :_text, String, annotations: {:class=>"String"}
end
