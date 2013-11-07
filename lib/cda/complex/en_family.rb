class Cda::EnFamily < Cda::ENXP
  attribute :part_type, Cda::EntityNamePartType, annotations: {:kind=>:attribute}
end
