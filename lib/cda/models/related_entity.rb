class Cda::RelatedEntity < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :code, Cda::CE
  attribute :addr, Array[Cda::AD], annotations: {:multiple=>true}
  attribute :telecom, Array[Cda::TEL], annotations: {:multiple=>true}
  attribute :effective_time, Cda::IVL_TS
  attribute :related_person, Cda::Person
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :class_code, Cda::RoleClassMutualRelationship, annotations: {:use=>:required, :kind=>:attribute}
end
