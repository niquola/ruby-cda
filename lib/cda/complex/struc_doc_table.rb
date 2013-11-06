class Cda::StrucDocTable
  include Virtus.model
  attribute :id, String, annotations: {:kind=>:attribute}
  attribute :border, String, annotations: {:kind=>:attribute}
  attribute :caption, Cda::StrucDocCaption
  attribute :cellpadding, String, annotations: {:kind=>:attribute}
  attribute :cellspacing, String, annotations: {:kind=>:attribute}
  attribute :frame, String
  attribute :language, String, annotations: {:kind=>:attribute}
  attribute :rules, String
  attribute :style_code, Array[String], annotations: {:kind=>:attribute}
  attribute :summary, String, annotations: {:kind=>:attribute}
  attribute :tbody, Array[Cda::StrucDocTbody]
  attribute :tfoot, Cda::StrucDocTfoot
  attribute :thead, Cda::StrucDocThead
  attribute :width, String, annotations: {:kind=>:attribute}
end
