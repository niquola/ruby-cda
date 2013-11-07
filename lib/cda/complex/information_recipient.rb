class Cda::InformationRecipient
  include Virtus.model
  attribute :intended_recipient, Cda::IntendedRecipient, annotations: {:class=>"Cda::IntendedRecipient"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :type_code, Cda::XInformationRecipient, annotations: {:kind=>:attribute, :class=>"Cda::XInformationRecipient"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
