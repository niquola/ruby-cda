class Cda::AssignedCustodian
  include Virtus.model
  attribute :class_code, Cda::RoleClassAssignedEntity, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :represented_custodian_organization, Cda::CustodianOrganization
  attribute :template_id, Array[Cda::II]
  attribute :type_id, Cda::InfrastructureRootTypeId
end
