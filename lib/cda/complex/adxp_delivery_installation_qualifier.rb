class Cda::AdxpDeliveryInstallationQualifier < Cda::ADXP
  include Virtus.model
  attribute :part_type, Cda::AddressPartType, annotations: {:kind=>:attribute}
end