class Cda::Encounter
  include Virtus.model
  attribute :author, Array[Cda::Author]
  attribute :class_code, Cda::ActClass, annotations: {:kind=>:attribute}
  attribute :code, Cda::CD
  attribute :discharge_disposition_code, Cda::CE
  attribute :effective_time, Cda::IVL_TS
  attribute :entry_relationship, Array[Cda::EntryRelationship]
  attribute :id, Array[Cda::II]
  attribute :informant, Array[Cda::Informant12]
  attribute :mood_code, Cda::XDocumentEncounterMood, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :participant, Array[Cda::Participant2]
  attribute :performer, Array[Cda::Performer2]
  attribute :precondition, Array[Cda::Precondition]
  attribute :priority_code, Cda::CE
  attribute :realm_code, Array[Cda::CS]
  attribute :reference, Array[Cda::Reference]
  attribute :specimen, Array[Cda::Specimen]
  attribute :status_code, Cda::CS
  attribute :subject, Cda::Subject
  attribute :template_id, Array[Cda::II]
  attribute :text, Cda::ED
  attribute :type_id, Cda::InfrastructureRootTypeId
end
