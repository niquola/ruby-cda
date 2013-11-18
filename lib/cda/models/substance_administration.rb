class Cda::SubstanceAdministration < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :code, Cda::CD
  attribute :text, Cda::ED
  attribute :status_code, Cda::CS
  attribute :effective_time, Array[Cda::SXCM_TS], annotations: {:multiple=>true}
  attribute :priority_code, Cda::CE
  attribute :repeat_number, Cda::IVL_INT
  attribute :route_code, Cda::CE
  attribute :approach_site_code, Array[Cda::CD], annotations: {:multiple=>true}
  attribute :dose_quantity, Cda::IVL_PQ
  attribute :rate_quantity, Cda::IVL_PQ
  attribute :max_dose_quantity, Cda::RTO_PQ_PQ
  attribute :administration_unit_code, Cda::CE
  attribute :subject, Cda::Subject
  attribute :specimen, Array[Cda::Specimen], annotations: {:multiple=>true}
  attribute :consumable, Cda::Consumable
  attribute :performer, Array[Cda::Performer2], annotations: {:multiple=>true}
  attribute :author, Array[Cda::Author], annotations: {:multiple=>true}
  attribute :informant, Array[Cda::Informant12], annotations: {:multiple=>true}
  attribute :participant, Array[Cda::Participant2], annotations: {:multiple=>true}
  attribute :entry_relationship, Array[Cda::EntryRelationship], annotations: {:multiple=>true}
  attribute :reference, Array[Cda::Reference], annotations: {:multiple=>true}
  attribute :precondition, Array[Cda::Precondition], annotations: {:multiple=>true}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :class_code, Cda::ActClass, annotations: {:use=>:required, :kind=>:attribute}
  attribute :mood_code, Cda::XDocumentSubstanceMood, annotations: {:use=>:required, :kind=>:attribute}
  attribute :negation_ind, Boolean, annotations: {:use=>:optional, :kind=>:attribute}
end
