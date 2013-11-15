class Cda::Observation < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :code, Cda::CD, annotations: {:class=>"Cda::CD"}
  attribute :derivation_expr, Cda::ST, annotations: {:class=>"Cda::ST"}
  attribute :text, Cda::ED, annotations: {:class=>"Cda::ED"}
  attribute :status_code, Cda::CS, annotations: {:class=>"Cda::CS"}
  attribute :effective_time, Cda::IVL_TS, annotations: {:class=>"Cda::IVL_TS"}
  attribute :priority_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :repeat_number, Cda::IVL_INT, annotations: {:class=>"Cda::IVL_INT"}
  attribute :language_code, Cda::CS, annotations: {:class=>"Cda::CS"}
  attribute :value, Array[Cda::ANY], annotations: {:multiple=>true, :class=>"Cda::ANY"}
  attribute :interpretation_code, Array[Cda::CE], annotations: {:multiple=>true, :class=>"Cda::CE"}
  attribute :method_code, Array[Cda::CE], annotations: {:multiple=>true, :class=>"Cda::CE"}
  attribute :target_site_code, Array[Cda::CD], annotations: {:multiple=>true, :class=>"Cda::CD"}
  attribute :subject, Cda::Subject, annotations: {:class=>"Cda::Subject"}
  attribute :specimen, Array[Cda::Specimen], annotations: {:multiple=>true, :class=>"Cda::Specimen"}
  attribute :performer, Array[Cda::Performer2], annotations: {:multiple=>true, :class=>"Cda::Performer2"}
  attribute :author, Array[Cda::Author], annotations: {:multiple=>true, :class=>"Cda::Author"}
  attribute :informant, Array[Cda::Informant12], annotations: {:multiple=>true, :class=>"Cda::Informant12"}
  attribute :participant, Array[Cda::Participant2], annotations: {:multiple=>true, :class=>"Cda::Participant2"}
  attribute :entry_relationship, Array[Cda::EntryRelationship], annotations: {:multiple=>true, :class=>"Cda::EntryRelationship"}
  attribute :reference, Array[Cda::Reference], annotations: {:multiple=>true, :class=>"Cda::Reference"}
  attribute :precondition, Array[Cda::Precondition], annotations: {:multiple=>true, :class=>"Cda::Precondition"}
  attribute :reference_range, Array[Cda::ReferenceRange], annotations: {:multiple=>true, :class=>"Cda::ReferenceRange"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :class_code, Cda::ActClassObservation, annotations: {:use=>:required, :kind=>:attribute, :class=>"Cda::ActClassObservation"}
  attribute :mood_code, Cda::XActMoodDocumentObservation, annotations: {:use=>:required, :kind=>:attribute, :class=>"Cda::XActMoodDocumentObservation"}
  attribute :negation_ind, Cda::Bl, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Bl"}
end
