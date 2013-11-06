class Cda::RelatedEntity
  include Virtus.model
  attribute :addr, Array[Cda::AD]
  attribute :class_code, Cda::RoleClassMutualRelationship, annotations: {:kind=>:attribute}
  attribute :code, Cda::CE
  attribute :effective_time, Cda::IVL_TS
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :related_person, Cda::Person
  attribute :telecom, Array[Cda::TEL]
  attribute :template_id, Array[Cda::II]
  attribute :type_id, Cda::InfrastructureRootTypeId
end