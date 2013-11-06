class Cda::EnDelimiter < Cda::ENXP
  include Virtus.model
  attribute :part_type, Cda::EntityNamePartType, annotations: {:kind=>:attribute}
end
