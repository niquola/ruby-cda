class Cda::ENXP < Cda::ST
  include Virtus.model
  attribute :part_type, Cda::EntityNamePartType, annotations: {:kind=>:attribute}
  attribute :qualifier, Cda::Set_EntityNamePartQualifier, annotations: {:kind=>:attribute}
end
