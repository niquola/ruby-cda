class Cda::EncompassingEncounter < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :code, Cda::CE
  attribute :effective_time, Cda::IVL_TS
  attribute :discharge_disposition_code, Cda::CE
  attribute :responsible_party, Cda::ResponsibleParty
  attribute :encounter_participant, Array[Cda::EncounterParticipant], annotations: {:multiple=>true}
  attribute :location, Cda::Location
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :class_code, Cda::ActClass, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :mood_code, Cda::ActMood, annotations: {:use=>:optional, :kind=>:attribute}
end
