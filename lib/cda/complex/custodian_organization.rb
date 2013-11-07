class Cda::CustodianOrganization
  include Virtus.model
  attribute :addr, Cda::AD
  attribute :class_code, Cda::EntityClassOrganization, annotations: {:kind=>:attribute}
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:kind=>:attribute}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :name, Cda::ON
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :telecom, Cda::TEL
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
