class Cda::Component1 < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :encompassing_encounter, Cda::EncompassingEncounter, annotations: {:class=>"Cda::EncompassingEncounter"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :type_code, Cda::ActRelationshipHasComponent, annotations: {:kind=>:attribute, :class=>"Cda::ActRelationshipHasComponent"}
end
