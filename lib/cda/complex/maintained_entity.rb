class Cda::MaintainedEntity
  include Virtus.model
  attribute :class_code, Cda::RoleClass, annotations: {:kind=>:attribute}
  attribute :effective_time, Cda::IVL_TS
  attribute :maintaining_person, Cda::Person
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
