class Cda::ENXP < Cda::ST
  attribute :part_type, Cda::EntityNamePartType, annotations: {:kind=>:attribute, :class=>"Cda::EntityNamePartType"}
  attribute :qualifier, Cda::Set_EntityNamePartQualifier, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Set_EntityNamePartQualifier"}
  attribute :_text, String, annotations: {:class=>"String"}
end
