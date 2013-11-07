class Cda::AdxpStreetAddressLine < Cda::ADXP
  attribute :part_type, Cda::AddressPartType, annotations: {:kind=>:attribute}
end
