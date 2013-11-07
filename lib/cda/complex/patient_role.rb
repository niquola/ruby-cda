class Cda::PatientRole
  include Virtus.model
  attribute :addr, Array[Cda::AD], annotations: {:multiple=>true, :class=>"Cda::AD"}
  attribute :class_code, Cda::RoleClass, annotations: {:kind=>:attribute, :class=>"Cda::RoleClass"}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :patient, Cda::Patient, annotations: {:class=>"Cda::Patient"}
  attribute :provider_organization, Cda::Organization, annotations: {:class=>"Cda::Organization"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :telecom, Array[Cda::TEL], annotations: {:multiple=>true, :class=>"Cda::TEL"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
