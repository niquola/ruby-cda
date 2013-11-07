class Cda::AssignedCustodian
  include Virtus.model
  attribute :class_code, Cda::RoleClassAssignedEntity, annotations: {:kind=>:attribute, :class=>"Cda::RoleClassAssignedEntity"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :represented_custodian_organization, Cda::CustodianOrganization, annotations: {:class=>"Cda::CustodianOrganization"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
