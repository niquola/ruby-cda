class Cda::Component1 < Cda::Base
  attribute :encompassing_encounter, Cda::EncompassingEncounter, annotations: {:class=>"Cda::EncompassingEncounter"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :type_code, Cda::ActRelationshipHasComponent, annotations: {:kind=>:attribute, :class=>"Cda::ActRelationshipHasComponent"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
