class Cda::ENXP < Cda::ST
  attribute :part_type, Cda::EntityNamePartType, annotations: {:kind=>:attribute}
  attribute :qualifier, Cda::Set_EntityNamePartQualifier, annotations: {:kind=>:attribute}
end
