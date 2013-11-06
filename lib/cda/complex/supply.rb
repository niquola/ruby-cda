class Cda::Supply
  include Virtus.model
  attribute :author, Array[Cda::Author]
  attribute :class_code, Cda::ActClassSupply, annotations: {:kind=>:attribute}
  attribute :code, Cda::CD
  attribute :effective_time, Array[Cda::SXCM_TS]
  attribute :entry_relationship, Array[Cda::EntryRelationship]
  attribute :expected_use_time, Cda::IVL_TS
  attribute :id, Array[Cda::II]
  attribute :independent_ind, Cda::BL
  attribute :informant, Array[Cda::Informant12]
  attribute :mood_code, Cda::XDocumentSubstanceMood, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :participant, Array[Cda::Participant2]
  attribute :performer, Array[Cda::Performer2]
  attribute :precondition, Array[Cda::Precondition]
  attribute :priority_code, Array[Cda::CE]
  attribute :product, Cda::Product
  attribute :quantity, Cda::PQ
  attribute :realm_code, Array[Cda::CS]
  attribute :reference, Array[Cda::Reference]
  attribute :repeat_number, Cda::IVL_INT
  attribute :specimen, Array[Cda::Specimen]
  attribute :status_code, Cda::CS
  attribute :subject, Cda::Subject
  attribute :template_id, Array[Cda::II]
  attribute :text, Cda::ED
  attribute :type_id, Cda::InfrastructureRootTypeId
end
