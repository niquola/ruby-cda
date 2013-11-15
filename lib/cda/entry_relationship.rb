class Cda::EntryRelationship < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :sequence_number, Cda::INT, annotations: {:class=>"Cda::INT"}
  attribute :seperatable_ind, Cda::BL, annotations: {:class=>"Cda::BL"}
  attribute :act, Cda::Act, annotations: {:class=>"Cda::Act"}
  attribute :encounter, Cda::Encounter, annotations: {:class=>"Cda::Encounter"}
  attribute :observation, Cda::Observation, annotations: {:class=>"Cda::Observation"}
  attribute :observation_media, Cda::ObservationMedia, annotations: {:class=>"Cda::ObservationMedia"}
  attribute :organizer, Cda::Organizer, annotations: {:class=>"Cda::Organizer"}
  attribute :procedure, Cda::Procedure, annotations: {:class=>"Cda::Procedure"}
  attribute :region_of_interest, Cda::RegionOfInterest, annotations: {:class=>"Cda::RegionOfInterest"}
  attribute :substance_administration, Cda::SubstanceAdministration, annotations: {:class=>"Cda::SubstanceAdministration"}
  attribute :supply, Cda::Supply, annotations: {:class=>"Cda::Supply"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :type_code, Cda::XActRelationshipEntryRelationship, annotations: {:use=>:required, :kind=>:attribute, :class=>"Cda::XActRelationshipEntryRelationship"}
  attribute :inversion_ind, Cda::Bl, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Bl"}
  attribute :context_conduction_ind, Cda::Bl, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Bl"}
  attribute :negation_ind, Cda::Bl, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Bl"}
end
