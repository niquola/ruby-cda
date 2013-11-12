class Cda::SubstanceAdministration < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :code, Cda::CD, annotations: {:class=>"Cda::CD"}
  attribute :text, Cda::ED, annotations: {:class=>"Cda::ED"}
  attribute :status_code, Cda::CS, annotations: {:class=>"Cda::CS"}
  attribute :effective_time, Array[Cda::SXCM_TS], annotations: {:multiple=>true, :class=>"Cda::SXCM_TS"}
  attribute :priority_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :repeat_number, Cda::IVL_INT, annotations: {:class=>"Cda::IVL_INT"}
  attribute :route_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :approach_site_code, Array[Cda::CD], annotations: {:multiple=>true, :class=>"Cda::CD"}
  attribute :dose_quantity, Cda::IVL_PQ, annotations: {:class=>"Cda::IVL_PQ"}
  attribute :rate_quantity, Cda::IVL_PQ, annotations: {:class=>"Cda::IVL_PQ"}
  attribute :max_dose_quantity, Cda::RTO_PQ_PQ, annotations: {:class=>"Cda::RTO_PQ_PQ"}
  attribute :administration_unit_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :subject, Cda::Subject, annotations: {:class=>"Cda::Subject"}
  attribute :specimen, Array[Cda::Specimen], annotations: {:multiple=>true, :class=>"Cda::Specimen"}
  attribute :consumable, Cda::Consumable, annotations: {:class=>"Cda::Consumable"}
  attribute :performer, Array[Cda::Performer2], annotations: {:multiple=>true, :class=>"Cda::Performer2"}
  attribute :author, Array[Cda::Author], annotations: {:multiple=>true, :class=>"Cda::Author"}
  attribute :informant, Array[Cda::Informant12], annotations: {:multiple=>true, :class=>"Cda::Informant12"}
  attribute :participant, Array[Cda::Participant2], annotations: {:multiple=>true, :class=>"Cda::Participant2"}
  attribute :entry_relationship, Array[Cda::EntryRelationship], annotations: {:multiple=>true, :class=>"Cda::EntryRelationship"}
  attribute :reference, Array[Cda::Reference], annotations: {:multiple=>true, :class=>"Cda::Reference"}
  attribute :precondition, Array[Cda::Precondition], annotations: {:multiple=>true, :class=>"Cda::Precondition"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :class_code, Cda::ActClass, annotations: {:kind=>:attribute, :class=>"Cda::ActClass"}
  attribute :mood_code, Cda::XDocumentSubstanceMood, annotations: {:kind=>:attribute, :class=>"Cda::XDocumentSubstanceMood"}
  attribute :negation_ind, Cda::Bl, annotations: {:kind=>:attribute, :class=>"Cda::Bl"}
end
