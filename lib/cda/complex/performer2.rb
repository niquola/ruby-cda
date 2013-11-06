class Cda::Performer2
  include Virtus.model
  attribute :assigned_entity, Cda::AssignedEntity
  attribute :mode_code, Cda::CE
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :template_id, Array[Cda::II]
  attribute :time, Cda::IVL_TS
  attribute :type_code, Cda::ParticipationPhysicalPerformer, annotations: {:kind=>:attribute}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
