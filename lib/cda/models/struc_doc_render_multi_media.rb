class Cda::StrucDocRenderMultiMedia < Cda::Base
  attribute :caption, Cda::StrucDocCaption
  attribute :referenced_object, Array[String], annotations: {:use=>:required, :kind=>:attribute}
  attribute :id, String, annotations: {:kind=>:attribute}
  attribute :language, String, annotations: {:kind=>:attribute}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute}
end
