class Cda::StrucDocTable < Cda::Base
  attribute :caption, Cda::StrucDocCaption
  attribute :col, Array[Cda::StrucDocCol], annotations: {:multiple=>true}
  attribute :colgroup, Array[Cda::StrucDocColgroup], annotations: {:multiple=>true}
  attribute :thead, Cda::StrucDocThead
  attribute :tfoot, Cda::StrucDocTfoot
  attribute :tbody, Array[Cda::StrucDocTbody], annotations: {:multiple=>true}
  attribute :id, String, annotations: {:kind=>:attribute}
  attribute :language, String, annotations: {:kind=>:attribute}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute}
  attribute :summary, String, annotations: {:kind=>:attribute}
  attribute :width, String, annotations: {:kind=>:attribute}
  attribute :border, String, annotations: {:kind=>:attribute}
  attribute :frame, String
  attribute :rules, String
  attribute :cellspacing, String, annotations: {:kind=>:attribute}
  attribute :cellpadding, String, annotations: {:kind=>:attribute}
end
