class Cda::EntryRelationship
  include Virtus.model
  attribute :context_conduction_ind, Cda::Bl, annotations: {:kind=>:attribute}
  attribute :inversion_ind, Cda::Bl, annotations: {:kind=>:attribute}
  attribute :negation_ind, Cda::Bl, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :seperatable_ind, Cda::BL
  attribute :sequence_number, Cda::INT
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :type_code, Cda::XActRelationshipEntryRelationship, annotations: {:kind=>:attribute}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
