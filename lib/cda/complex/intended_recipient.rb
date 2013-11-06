class Cda::IntendedRecipient
  include Virtus.model
  attribute :addr, Array[Cda::AD]
  attribute :class_code, Cda::XInformationRecipientRole, annotations: {:kind=>:attribute}
  attribute :id, Array[Cda::II]
  attribute :information_recipient, Cda::Person
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :received_organization, Cda::Organization
  attribute :telecom, Array[Cda::TEL]
  attribute :template_id, Array[Cda::II]
  attribute :type_id, Cda::InfrastructureRootTypeId
end
