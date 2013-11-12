class Cda::ManufacturedProduct < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :manufactured_labeled_drug, Cda::LabeledDrug, annotations: {:class=>"Cda::LabeledDrug"}
  attribute :manufactured_material, Cda::Material, annotations: {:class=>"Cda::Material"}
  attribute :manufacturer_organization, Cda::Organization, annotations: {:class=>"Cda::Organization"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :class_code, Cda::RoleClassManufacturedProduct, annotations: {:kind=>:attribute, :class=>"Cda::RoleClassManufacturedProduct"}
end
