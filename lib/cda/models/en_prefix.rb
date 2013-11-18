class Cda::EnPrefix < Cda::ENXP
  attribute :part_type, Cda::EntityNamePartType, annotations: {:kind=>:attribute}
  attribute :_text, String
end
