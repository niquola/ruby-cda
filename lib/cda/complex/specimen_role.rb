class Cda::SpecimenRole
  include Virtus.model
  attribute :class_code, Cda::RoleClassSpecimen, annotations: {:kind=>:attribute}
  attribute :id, Array[Cda::II]
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :specimen_playing_entity, Cda::PlayingEntity
  attribute :template_id, Array[Cda::II]
  attribute :type_id, Cda::InfrastructureRootTypeId
end
