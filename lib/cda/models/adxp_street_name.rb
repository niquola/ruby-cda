class Cda::AdxpStreetName < Cda::ADXP
  attribute :part_type, Cda::AddressPartType, annotations: {:kind=>:attribute}
  attribute :_text, String
end
