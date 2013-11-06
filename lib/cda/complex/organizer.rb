class Cda::Organizer
  include Virtus.model
  attribute :author, Array[Cda::Author]
  attribute :class_code, Cda::XActClassDocumentEntryOrganizer, annotations: {:kind=>:attribute}
  attribute :code, Cda::CD
  attribute :component, Array[Cda::Component4]
  attribute :effective_time, Cda::IVL_TS
  attribute :id, Array[Cda::II]
  attribute :informant, Array[Cda::Informant12]
  attribute :mood_code, Cda::ActMood, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :participant, Array[Cda::Participant2]
  attribute :performer, Array[Cda::Performer2]
  attribute :precondition, Array[Cda::Precondition]
  attribute :realm_code, Array[Cda::CS]
  attribute :reference, Array[Cda::Reference]
  attribute :specimen, Array[Cda::Specimen]
  attribute :status_code, Cda::CS
  attribute :subject, Cda::Subject
  attribute :template_id, Array[Cda::II]
  attribute :type_id, Cda::InfrastructureRootTypeId
end
