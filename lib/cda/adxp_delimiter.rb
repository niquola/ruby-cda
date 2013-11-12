class Cda::AdxpDelimiter < Cda::ADXP
  attribute :part_type, Cda::AddressPartType, annotations: {:kind=>:attribute, :class=>"Cda::AddressPartType"}
  attribute :_text, String, annotations: {:kind=>:attribute, :class=>"String"}
end
