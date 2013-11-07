class Cda::SpecimenRole
  include Virtus.model
  attribute :class_code, Cda::RoleClassSpecimen, annotations: {:kind=>:attribute, :class=>"Cda::RoleClassSpecimen"}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :specimen_playing_entity, Cda::PlayingEntity, annotations: {:class=>"Cda::PlayingEntity"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
