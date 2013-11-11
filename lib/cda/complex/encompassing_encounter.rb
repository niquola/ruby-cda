class Cda::EncompassingEncounter < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :effective_time, Cda::IVL_TS, annotations: {:class=>"Cda::IVL_TS"}
  attribute :discharge_disposition_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :responsible_party, Cda::ResponsibleParty, annotations: {:class=>"Cda::ResponsibleParty"}
  attribute :encounter_participant, Array[Cda::EncounterParticipant], annotations: {:multiple=>true, :class=>"Cda::EncounterParticipant"}
  attribute :location, Cda::Location, annotations: {:class=>"Cda::Location"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :class_code, Cda::ActClass, annotations: {:kind=>:attribute, :class=>"Cda::ActClass"}
  attribute :mood_code, Cda::ActMood, annotations: {:kind=>:attribute, :class=>"Cda::ActMood"}
end
