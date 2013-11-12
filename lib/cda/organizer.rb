class Cda::Organizer < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :code, Cda::CD, annotations: {:class=>"Cda::CD"}
  attribute :status_code, Cda::CS, annotations: {:class=>"Cda::CS"}
  attribute :effective_time, Cda::IVL_TS, annotations: {:class=>"Cda::IVL_TS"}
  attribute :subject, Cda::Subject, annotations: {:class=>"Cda::Subject"}
  attribute :specimen, Array[Cda::Specimen], annotations: {:multiple=>true, :class=>"Cda::Specimen"}
  attribute :performer, Array[Cda::Performer2], annotations: {:multiple=>true, :class=>"Cda::Performer2"}
  attribute :author, Array[Cda::Author], annotations: {:multiple=>true, :class=>"Cda::Author"}
  attribute :informant, Array[Cda::Informant12], annotations: {:multiple=>true, :class=>"Cda::Informant12"}
  attribute :participant, Array[Cda::Participant2], annotations: {:multiple=>true, :class=>"Cda::Participant2"}
  attribute :reference, Array[Cda::Reference], annotations: {:multiple=>true, :class=>"Cda::Reference"}
  attribute :precondition, Array[Cda::Precondition], annotations: {:multiple=>true, :class=>"Cda::Precondition"}
  attribute :component, Array[Cda::Component4], annotations: {:multiple=>true, :class=>"Cda::Component4"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :class_code, Cda::XActClassDocumentEntryOrganizer, annotations: {:kind=>:attribute, :class=>"Cda::XActClassDocumentEntryOrganizer"}
  attribute :mood_code, Cda::ActMood, annotations: {:kind=>:attribute, :class=>"Cda::ActMood"}
end
