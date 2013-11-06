class Cda::PatientRole
  include Virtus.model
  attribute :addr, Array[Cda::AD]
  attribute :class_code, Cda::RoleClass, annotations: {:kind=>:attribute}
  attribute :id, Array[Cda::II]
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :patient, Cda::Patient
  attribute :provider_organization, Cda::Organization
  attribute :realm_code, Array[Cda::CS]
  attribute :telecom, Array[Cda::TEL]
  attribute :template_id, Array[Cda::II]
  attribute :type_id, Cda::InfrastructureRootTypeId
end
