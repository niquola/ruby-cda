class Cda::EncounterParticipant
  include Virtus.model
  attribute :assigned_entity, Cda::AssignedEntity
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :time, Cda::IVL_TS
  attribute :type_code, Cda::XEncounterParticipant, annotations: {:kind=>:attribute}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
