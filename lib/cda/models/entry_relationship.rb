class Cda::EntryRelationship < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :sequence_number, Cda::INT
  attribute :seperatable_ind, Cda::BL
  attribute :act, Cda::Act
  attribute :encounter, Cda::Encounter
  attribute :observation, Cda::Observation
  attribute :observation_media, Cda::ObservationMedia
  attribute :organizer, Cda::Organizer
  attribute :procedure, Cda::Procedure
  attribute :region_of_interest, Cda::RegionOfInterest
  attribute :substance_administration, Cda::SubstanceAdministration
  attribute :supply, Cda::Supply
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :type_code, Cda::XActRelationshipEntryRelationship, annotations: {:use=>:required, :kind=>:attribute}
  attribute :inversion_ind, Boolean, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :context_conduction_ind, Boolean, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :negation_ind, Boolean, annotations: {:use=>:optional, :kind=>:attribute}
end
