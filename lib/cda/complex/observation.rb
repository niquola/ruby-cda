class Cda::Observation
  include Virtus.model
  attribute :author, Array[Cda::Author], annotations: {:multiple=>true, :class=>"Cda::Author"}
  attribute :class_code, Cda::ActClassObservation, annotations: {:kind=>:attribute, :class=>"Cda::ActClassObservation"}
  attribute :code, Cda::CD, annotations: {:class=>"Cda::CD"}
  attribute :derivation_expr, Cda::ST, annotations: {:class=>"Cda::ST"}
  attribute :effective_time, Cda::IVL_TS, annotations: {:class=>"Cda::IVL_TS"}
  attribute :entry_relationship, Array[Cda::EntryRelationship], annotations: {:multiple=>true, :class=>"Cda::EntryRelationship"}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :informant, Array[Cda::Informant12], annotations: {:multiple=>true, :class=>"Cda::Informant12"}
  attribute :interpretation_code, Array[Cda::CE], annotations: {:multiple=>true, :class=>"Cda::CE"}
  attribute :language_code, Cda::CS, annotations: {:class=>"Cda::CS"}
  attribute :method_code, Array[Cda::CE], annotations: {:multiple=>true, :class=>"Cda::CE"}
  attribute :mood_code, Cda::XActMoodDocumentObservation, annotations: {:kind=>:attribute, :class=>"Cda::XActMoodDocumentObservation"}
  attribute :negation_ind, Cda::Bl, annotations: {:kind=>:attribute, :class=>"Cda::Bl"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :participant, Array[Cda::Participant2], annotations: {:multiple=>true, :class=>"Cda::Participant2"}
  attribute :performer, Array[Cda::Performer2], annotations: {:multiple=>true, :class=>"Cda::Performer2"}
  attribute :precondition, Array[Cda::Precondition], annotations: {:multiple=>true, :class=>"Cda::Precondition"}
  attribute :priority_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :reference, Array[Cda::Reference], annotations: {:multiple=>true, :class=>"Cda::Reference"}
  attribute :reference_range, Array[Cda::ReferenceRange], annotations: {:multiple=>true, :class=>"Cda::ReferenceRange"}
  attribute :repeat_number, Cda::IVL_INT, annotations: {:class=>"Cda::IVL_INT"}
  attribute :specimen, Array[Cda::Specimen], annotations: {:multiple=>true, :class=>"Cda::Specimen"}
  attribute :status_code, Cda::CS, annotations: {:class=>"Cda::CS"}
  attribute :subject, Cda::Subject, annotations: {:class=>"Cda::Subject"}
  attribute :target_site_code, Array[Cda::CD], annotations: {:multiple=>true, :class=>"Cda::CD"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :text, Cda::ED, annotations: {:class=>"Cda::ED"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :value, Array[Object], annotations: {:multiple=>true, :class=>"Object"}
end
