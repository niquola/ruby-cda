class Cda::Component5 < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :section, Cda::Section, annotations: {:class=>"Cda::Section"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :type_code, Cda::ActRelationshipHasComponent, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::ActRelationshipHasComponent"}
  attribute :context_conduction_ind, Cda::Bl, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Bl"}
end
