class Cda::StrucDocTable < Cda::Base
  attribute :caption, Cda::StrucDocCaption, annotations: {:class=>"Cda::StrucDocCaption"}
  attribute :thead, Cda::StrucDocThead, annotations: {:class=>"Cda::StrucDocThead"}
  attribute :tfoot, Cda::StrucDocTfoot, annotations: {:class=>"Cda::StrucDocTfoot"}
  attribute :tbody, Array[Cda::StrucDocTbody], annotations: {:multiple=>true, :class=>"Cda::StrucDocTbody"}
  attribute :id, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :language, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute, :class=>"Array[String]"}
  attribute :summary, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :width, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :border, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :frame, String, annotations: {:class=>"String"}
  attribute :rules, String, annotations: {:class=>"String"}
  attribute :cellspacing, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :cellpadding, String, annotations: {:kind=>:attribute, :class=>"String"}
end
