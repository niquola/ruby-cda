class Cda::ParticipantRole < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :addr, Array[Cda::AD], annotations: {:multiple=>true, :class=>"Cda::AD"}
  attribute :telecom, Array[Cda::TEL], annotations: {:multiple=>true, :class=>"Cda::TEL"}
  attribute :playing_device, Cda::Device, annotations: {:class=>"Cda::Device"}
  attribute :playing_entity, Cda::PlayingEntity, annotations: {:class=>"Cda::PlayingEntity"}
  attribute :scoping_entity, Cda::Entity, annotations: {:class=>"Cda::Entity"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :class_code, Cda::RoleClassRoot, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::RoleClassRoot"}
end
