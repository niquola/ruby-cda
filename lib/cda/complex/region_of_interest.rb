class Cda::RegionOfInterest
  include Virtus.model
  attribute :id, String, annotations: {:kind=>:attribute}
  attribute :author, Array[Cda::Author]
  attribute :class_code, Cda::ActClass, annotations: {:kind=>:attribute}
  attribute :code, Cda::CS
  attribute :entry_relationship, Array[Cda::EntryRelationship]
  attribute :id, Array[Cda::II]
  attribute :informant, Array[Cda::Informant12]
  attribute :mood_code, Cda::ActMood, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :participant, Array[Cda::Participant2]
  attribute :performer, Array[Cda::Performer2]
  attribute :precondition, Array[Cda::Precondition]
  attribute :realm_code, Array[Cda::CS]
  attribute :reference, Array[Cda::Reference]
  attribute :specimen, Array[Cda::Specimen]
  attribute :subject, Cda::Subject
  attribute :template_id, Array[Cda::II]
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :value, Array[Cda::RegionOfInterestValue]
end
