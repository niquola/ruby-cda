class Cda::EncompassingEncounter
  include Virtus.model
  attribute :class_code, Cda::ActClass, annotations: {:kind=>:attribute}
  attribute :code, Cda::CE
  attribute :discharge_disposition_code, Cda::CE
  attribute :effective_time, Cda::IVL_TS
  attribute :encounter_participant, Array[Cda::EncounterParticipant]
  attribute :id, Array[Cda::II]
  attribute :location, Cda::Location
  attribute :mood_code, Cda::ActMood, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :responsible_party, Cda::ResponsibleParty
  attribute :template_id, Array[Cda::II]
  attribute :type_id, Cda::InfrastructureRootTypeId
end
