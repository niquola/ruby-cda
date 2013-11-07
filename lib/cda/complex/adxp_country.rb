class Cda::AdxpCountry < Cda::ADXP
  attribute :part_type, Cda::AddressPartType, annotations: {:kind=>:attribute}
end
