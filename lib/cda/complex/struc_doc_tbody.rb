class Cda::StrucDocTbody
  include Virtus.model
  attribute :id, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :align, String, annotations: {:class=>"String"}
  attribute :char, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :charoff, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :language, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute, :class=>"Array[String]"}
  attribute :tr, Cda::StrucDocTr, annotations: {:class=>"Cda::StrucDocTr"}
  attribute :valign, String, annotations: {:class=>"String"}
end
