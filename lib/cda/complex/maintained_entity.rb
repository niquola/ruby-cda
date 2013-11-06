class Cda::MaintainedEntity
  include Virtus.model
  attribute :class_code, Cda::RoleClass, annotations: {:kind=>:attribute}
  attribute :effective_time, Cda::IVL_TS
  attribute :maintaining_person, Cda::Person
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :template_id, Array[Cda::II]
  attribute :type_id, Cda::InfrastructureRootTypeId
end