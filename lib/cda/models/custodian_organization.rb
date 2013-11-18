class Cda::CustodianOrganization < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :name, Cda::ON
  attribute :telecom, Cda::TEL
  attribute :addr, Cda::AD
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :class_code, Cda::EntityClassOrganization, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:use=>:optional, :kind=>:attribute}
end
