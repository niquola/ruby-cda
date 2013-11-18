class Cda::EncounterParticipant < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :time, Cda::IVL_TS
  attribute :assigned_entity, Cda::AssignedEntity
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :type_code, Cda::XEncounterParticipant, annotations: {:use=>:required, :kind=>:attribute}
end
