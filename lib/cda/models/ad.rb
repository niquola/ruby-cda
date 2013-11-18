class Cda::AD < Cda::ANY
  attribute :delimiter, Cda::AdxpDelimiter
  attribute :country, Cda::AdxpCountry
  attribute :state, Cda::AdxpState
  attribute :county, Cda::AdxpCounty
  attribute :city, Cda::AdxpCity
  attribute :postal_code, Cda::AdxpPostalCode
  attribute :street_address_line, Cda::AdxpStreetAddressLine
  attribute :house_number, Cda::AdxpHouseNumber
  attribute :house_number_numeric, Cda::AdxpHouseNumberNumeric
  attribute :direction, Cda::AdxpDirection
  attribute :street_name, Cda::AdxpStreetName
  attribute :street_name_base, Cda::AdxpStreetNameBase
  attribute :street_name_type, Cda::AdxpStreetNameType
  attribute :additional_locator, Cda::AdxpAdditionalLocator
  attribute :unit_id, Cda::AdxpUnitID
  attribute :unit_type, Cda::AdxpUnitType
  attribute :care_of, Cda::AdxpCareOf
  attribute :census_tract, Cda::AdxpCensusTract
  attribute :delivery_address_line, Cda::AdxpDeliveryAddressLine
  attribute :delivery_installation_type, Cda::AdxpDeliveryInstallationType
  attribute :delivery_installation_area, Cda::AdxpDeliveryInstallationArea
  attribute :delivery_installation_qualifier, Cda::AdxpDeliveryInstallationQualifier
  attribute :delivery_mode, Cda::AdxpDeliveryMode
  attribute :delivery_mode_identifier, Cda::AdxpDeliveryModeIdentifier
  attribute :building_number_suffix, Cda::AdxpBuildingNumberSuffix
  attribute :post_box, Cda::AdxpPostBox
  attribute :precinct, Cda::AdxpPrecinct
  attribute :useable_period, Array[Cda::SXCM_TS], annotations: {:multiple=>true}
  attribute :use, Cda::Set_PostalAddressUse, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :is_not_ordered, Boolean, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :_text, String
end
