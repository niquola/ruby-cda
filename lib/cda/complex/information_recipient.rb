class Cda::InformationRecipient
  include Virtus.model
  attribute :intended_recipient, Cda::IntendedRecipient
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :template_id, Array[Cda::II]
  attribute :type_code, Cda::XInformationRecipient, annotations: {:kind=>:attribute}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
