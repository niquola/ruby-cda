class Cda::PatientRole < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :addr, Array[Cda::AD], annotations: {:multiple=>true}
  attribute :telecom, Array[Cda::TEL], annotations: {:multiple=>true}
  attribute :patient, Cda::Patient
  attribute :provider_organization, Cda::Organization
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :class_code, Cda::RoleClass, annotations: {:use=>:optional, :kind=>:attribute}
end
