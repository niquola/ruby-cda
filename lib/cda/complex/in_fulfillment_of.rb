class Cda::InFulfillmentOf
  include Virtus.model
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :order, Cda::Order
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :type_code, Cda::ActRelationshipFulfills, annotations: {:kind=>:attribute}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
