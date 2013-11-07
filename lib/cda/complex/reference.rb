class Cda::Reference
  include Virtus.model
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :seperatable_ind, Cda::BL, annotations: {:class=>"Cda::BL"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :type_code, Cda::XActRelationshipExternalReference, annotations: {:kind=>:attribute, :class=>"Cda::XActRelationshipExternalReference"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
