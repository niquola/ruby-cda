class Cda::Component3 < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :section, Cda::Section
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :type_code, Cda::ActRelationshipHasComponent, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :context_conduction_ind, Boolean, annotations: {:use=>:optional, :kind=>:attribute}
end
