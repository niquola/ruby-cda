class Cda::ENXP < Cda::ST
  attribute :part_type, Cda::EntityNamePartType, annotations: {:kind=>:attribute, :class=>"Cda::EntityNamePartType"}
  attribute :qualifier, Cda::Set_EntityNamePartQualifier, annotations: {:kind=>:attribute, :class=>"Cda::Set_EntityNamePartQualifier"}
end
