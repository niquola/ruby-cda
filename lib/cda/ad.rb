class Cda::AD < Cda::ANY
  attribute :delimiter, Cda::AdxpDelimiter, annotations: {:class=>"Cda::AdxpDelimiter"}
  attribute :country, Cda::AdxpCountry, annotations: {:class=>"Cda::AdxpCountry"}
  attribute :state, Cda::AdxpState, annotations: {:class=>"Cda::AdxpState"}
  attribute :county, Cda::AdxpCounty, annotations: {:class=>"Cda::AdxpCounty"}
  attribute :city, Cda::AdxpCity, annotations: {:class=>"Cda::AdxpCity"}
  attribute :postal_code, Cda::AdxpPostalCode, annotations: {:class=>"Cda::AdxpPostalCode"}
  attribute :street_address_line, Cda::AdxpStreetAddressLine, annotations: {:class=>"Cda::AdxpStreetAddressLine"}
  attribute :house_number, Cda::AdxpHouseNumber, annotations: {:class=>"Cda::AdxpHouseNumber"}
  attribute :house_number_numeric, Cda::AdxpHouseNumberNumeric, annotations: {:class=>"Cda::AdxpHouseNumberNumeric"}
  attribute :direction, Cda::AdxpDirection, annotations: {:class=>"Cda::AdxpDirection"}
  attribute :street_name, Cda::AdxpStreetName, annotations: {:class=>"Cda::AdxpStreetName"}
  attribute :street_name_base, Cda::AdxpStreetNameBase, annotations: {:class=>"Cda::AdxpStreetNameBase"}
  attribute :street_name_type, Cda::AdxpStreetNameType, annotations: {:class=>"Cda::AdxpStreetNameType"}
  attribute :additional_locator, Cda::AdxpAdditionalLocator, annotations: {:class=>"Cda::AdxpAdditionalLocator"}
  attribute :unit_id, Cda::AdxpUnitID, annotations: {:class=>"Cda::AdxpUnitID"}
  attribute :unit_type, Cda::AdxpUnitType, annotations: {:class=>"Cda::AdxpUnitType"}
  attribute :care_of, Cda::AdxpCareOf, annotations: {:class=>"Cda::AdxpCareOf"}
  attribute :census_tract, Cda::AdxpCensusTract, annotations: {:class=>"Cda::AdxpCensusTract"}
  attribute :delivery_address_line, Cda::AdxpDeliveryAddressLine, annotations: {:class=>"Cda::AdxpDeliveryAddressLine"}
  attribute :delivery_installation_type, Cda::AdxpDeliveryInstallationType, annotations: {:class=>"Cda::AdxpDeliveryInstallationType"}
  attribute :delivery_installation_area, Cda::AdxpDeliveryInstallationArea, annotations: {:class=>"Cda::AdxpDeliveryInstallationArea"}
  attribute :delivery_installation_qualifier, Cda::AdxpDeliveryInstallationQualifier, annotations: {:class=>"Cda::AdxpDeliveryInstallationQualifier"}
  attribute :delivery_mode, Cda::AdxpDeliveryMode, annotations: {:class=>"Cda::AdxpDeliveryMode"}
  attribute :delivery_mode_identifier, Cda::AdxpDeliveryModeIdentifier, annotations: {:class=>"Cda::AdxpDeliveryModeIdentifier"}
  attribute :building_number_suffix, Cda::AdxpBuildingNumberSuffix, annotations: {:class=>"Cda::AdxpBuildingNumberSuffix"}
  attribute :post_box, Cda::AdxpPostBox, annotations: {:class=>"Cda::AdxpPostBox"}
  attribute :precinct, Cda::AdxpPrecinct, annotations: {:class=>"Cda::AdxpPrecinct"}
  attribute :useable_period, Array[Cda::SXCM_TS], annotations: {:multiple=>true, :class=>"Cda::SXCM_TS"}
  attribute :use, Cda::Set_PostalAddressUse, annotations: {:kind=>:attribute, :class=>"Cda::Set_PostalAddressUse"}
  attribute :is_not_ordered, Cda::Bl, annotations: {:kind=>:attribute, :class=>"Cda::Bl"}
end
