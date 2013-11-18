class Cda::MaintainedEntity < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :effective_time, Cda::IVL_TS
  attribute :maintaining_person, Cda::Person
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :class_code, Cda::RoleClass, annotations: {:use=>:optional, :kind=>:attribute}
end
