class Cda::Organization < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :name, Array[Cda::ON], annotations: {:multiple=>true}
  attribute :telecom, Array[Cda::TEL], annotations: {:multiple=>true}
  attribute :addr, Array[Cda::AD], annotations: {:multiple=>true}
  attribute :standard_industry_class_code, Cda::CE
  attribute :as_organization_part_of, Cda::OrganizationPartOf
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :class_code, Cda::EntityClassOrganization, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:use=>:optional, :kind=>:attribute}
end
