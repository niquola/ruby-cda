class Cda::ManufacturedProduct < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :manufactured_labeled_drug, Cda::LabeledDrug
  attribute :manufactured_material, Cda::Material
  attribute :manufacturer_organization, Cda::Organization
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :class_code, Cda::RoleClassManufacturedProduct, annotations: {:use=>:optional, :kind=>:attribute}
end
