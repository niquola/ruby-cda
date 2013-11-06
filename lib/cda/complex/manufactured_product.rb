class Cda::ManufacturedProduct
  include Virtus.model
  attribute :class_code, Cda::RoleClassManufacturedProduct, annotations: {:kind=>:attribute}
  attribute :id, Array[Cda::II]
  attribute :manufacturer_organization, Cda::Organization
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :template_id, Array[Cda::II]
  attribute :type_id, Cda::InfrastructureRootTypeId
end
