class Cda::Organization
  include Virtus.model
  attribute :addr, Array[Cda::AD]
  attribute :as_organization_part_of, Cda::OrganizationPartOf
  attribute :class_code, Cda::EntityClassOrganization, annotations: {:kind=>:attribute}
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:kind=>:attribute}
  attribute :id, Array[Cda::II]
  attribute :name, Array[Cda::ON]
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :standard_industry_class_code, Cda::CE
  attribute :telecom, Array[Cda::TEL]
  attribute :template_id, Array[Cda::II]
  attribute :type_id, Cda::InfrastructureRootTypeId
end
