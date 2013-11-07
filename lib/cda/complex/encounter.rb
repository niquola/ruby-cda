class Cda::Encounter
  include Virtus.model
  attribute :author, Array[Cda::Author], annotations: {:multiple=>true}
  attribute :class_code, Cda::ActClass, annotations: {:kind=>:attribute}
  attribute :code, Cda::CD
  attribute :discharge_disposition_code, Cda::CE
  attribute :effective_time, Cda::IVL_TS
  attribute :entry_relationship, Array[Cda::EntryRelationship], annotations: {:multiple=>true}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :informant, Array[Cda::Informant12], annotations: {:multiple=>true}
  attribute :mood_code, Cda::XDocumentEncounterMood, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :participant, Array[Cda::Participant2], annotations: {:multiple=>true}
  attribute :performer, Array[Cda::Performer2], annotations: {:multiple=>true}
  attribute :precondition, Array[Cda::Precondition], annotations: {:multiple=>true}
  attribute :priority_code, Cda::CE
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :reference, Array[Cda::Reference], annotations: {:multiple=>true}
  attribute :specimen, Array[Cda::Specimen], annotations: {:multiple=>true}
  attribute :status_code, Cda::CS
  attribute :subject, Cda::Subject
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :text, Cda::ED
  attribute :type_id, Cda::InfrastructureRootTypeId
end
