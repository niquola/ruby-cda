class Cda::PatientRole
  include Virtus.model
  attribute :addr, Array[Cda::AD], annotations: {:multiple=>true}
  attribute :class_code, Cda::RoleClass, annotations: {:kind=>:attribute}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :patient, Cda::Patient
  attribute :provider_organization, Cda::Organization
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :telecom, Array[Cda::TEL], annotations: {:multiple=>true}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
