class Cda::EnDelimiter < Cda::ENXP
  attribute :part_type, Cda::EntityNamePartType, annotations: {:kind=>:attribute, :class=>"Cda::EntityNamePartType"}
  attribute :_text, String, annotations: {:kind=>:attribute, :class=>"String"}
end
