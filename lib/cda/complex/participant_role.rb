class Cda::ParticipantRole
  include Virtus.model
  attribute :addr, Array[Cda::AD], annotations: {:multiple=>true}
  attribute :class_code, Cda::RoleClassRoot, annotations: {:kind=>:attribute}
  attribute :code, Cda::CE
  attribute :id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :scoping_entity, Cda::Entity
  attribute :telecom, Array[Cda::TEL], annotations: {:multiple=>true}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
