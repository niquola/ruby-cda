class Cda::EnPrefix < Cda::ENXP
  attribute :part_type, Cda::EntityNamePartType, annotations: {:kind=>:attribute, :class=>"Cda::EntityNamePartType"}
  attribute :_text, String, annotations: {:class=>"String"}
end
