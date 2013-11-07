class Cda::ManufacturedProduct < Cda::Base
  attribute :class_code, Cda::RoleClassManufacturedProduct, annotations: {:kind=>:attribute, :class=>"Cda::RoleClassManufacturedProduct"}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :manufacturer_organization, Cda::Organization, annotations: {:class=>"Cda::Organization"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
