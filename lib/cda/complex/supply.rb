class Cda::Supply
  include Virtus.model
  attribute :author, Array[Cda::Author], annotations: {:multiple=>true, :class=>"Cda::Author"}
  attribute :class_code, Cda::ActClassSupply, annotations: {:kind=>:attribute, :class=>"Cda::ActClassSupply"}
  attribute :code, Cda::CD, annotations: {:class=>"Cda::CD"}
  attribute :effective_time, Array[Cda::SXCM_TS], annotations: {:multiple=>true, :class=>"Cda::SXCM_TS"}
  attribute :entry_relationship, Array[Cda::EntryRelationship], annotations: {:multiple=>true, :class=>"Cda::EntryRelationship"}
  attribute :expected_use_time, Cda::IVL_TS, annotations: {:class=>"Cda::IVL_TS"}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :independent_ind, Cda::BL, annotations: {:class=>"Cda::BL"}
  attribute :informant, Array[Cda::Informant12], annotations: {:multiple=>true, :class=>"Cda::Informant12"}
  attribute :mood_code, Cda::XDocumentSubstanceMood, annotations: {:kind=>:attribute, :class=>"Cda::XDocumentSubstanceMood"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :participant, Array[Cda::Participant2], annotations: {:multiple=>true, :class=>"Cda::Participant2"}
  attribute :performer, Array[Cda::Performer2], annotations: {:multiple=>true, :class=>"Cda::Performer2"}
  attribute :precondition, Array[Cda::Precondition], annotations: {:multiple=>true, :class=>"Cda::Precondition"}
  attribute :priority_code, Array[Cda::CE], annotations: {:multiple=>true, :class=>"Cda::CE"}
  attribute :product, Cda::Product, annotations: {:class=>"Cda::Product"}
  attribute :quantity, Cda::PQ, annotations: {:class=>"Cda::PQ"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :reference, Array[Cda::Reference], annotations: {:multiple=>true, :class=>"Cda::Reference"}
  attribute :repeat_number, Cda::IVL_INT, annotations: {:class=>"Cda::IVL_INT"}
  attribute :specimen, Array[Cda::Specimen], annotations: {:multiple=>true, :class=>"Cda::Specimen"}
  attribute :status_code, Cda::CS, annotations: {:class=>"Cda::CS"}
  attribute :subject, Cda::Subject, annotations: {:class=>"Cda::Subject"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :text, Cda::ED, annotations: {:class=>"Cda::ED"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
