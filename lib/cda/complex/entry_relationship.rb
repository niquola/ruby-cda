class Cda::EntryRelationship
  include Virtus.model
  attribute :context_conduction_ind, Cda::Bl, annotations: {:kind=>:attribute, :class=>"Cda::Bl"}
  attribute :inversion_ind, Cda::Bl, annotations: {:kind=>:attribute, :class=>"Cda::Bl"}
  attribute :negation_ind, Cda::Bl, annotations: {:kind=>:attribute, :class=>"Cda::Bl"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :seperatable_ind, Cda::BL, annotations: {:class=>"Cda::BL"}
  attribute :sequence_number, Cda::INT, annotations: {:class=>"Cda::INT"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :type_code, Cda::XActRelationshipEntryRelationship, annotations: {:kind=>:attribute, :class=>"Cda::XActRelationshipEntryRelationship"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
