class Cda::Organization
  include Virtus.model
  attribute :addr, Array[Cda::AD], annotations: {:multiple=>true}
  attribute :as_organization_part_of, Cda::OrganizationPartOf
  attribute :class_code, Cda::EntityClassOrganization, annotations: {:kind=>:attribute}
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:kind=>:attribute}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :name, Array[Cda::ON], annotations: {:multiple=>true}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :standard_industry_class_code, Cda::CE
  attribute :telecom, Array[Cda::TEL], annotations: {:multiple=>true}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
