class Cda::ParticipantRole < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :code, Cda::CE
  attribute :addr, Array[Cda::AD], annotations: {:multiple=>true}
  attribute :telecom, Array[Cda::TEL], annotations: {:multiple=>true}
  attribute :playing_device, Cda::Device
  attribute :playing_entity, Cda::PlayingEntity
  attribute :scoping_entity, Cda::Entity
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :class_code, Cda::RoleClassRoot, annotations: {:use=>:optional, :kind=>:attribute}
end
