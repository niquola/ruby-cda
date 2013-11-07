class Cda::Reference
  include Virtus.model
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :seperatable_ind, Cda::BL
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :type_code, Cda::XActRelationshipExternalReference, annotations: {:kind=>:attribute}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
