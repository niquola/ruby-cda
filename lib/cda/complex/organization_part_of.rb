class Cda::OrganizationPartOf
  include Virtus.model
  attribute :class_code, Cda::RoleClass, annotations: {:kind=>:attribute}
  attribute :code, Cda::CE
  attribute :effective_time, Cda::IVL_TS
  attribute :id, Array[Cda::II]
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :status_code, Cda::CS
  attribute :template_id, Array[Cda::II]
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :whole_organization, Cda::Organization
end
