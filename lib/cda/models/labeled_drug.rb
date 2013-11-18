class Cda::LabeledDrug < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :code, Cda::CE
  attribute :name, Cda::EN
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :class_code, Cda::EntityClassManufacturedMaterial, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :determiner_code, Cda::EntityDeterminerDetermined, annotations: {:use=>:optional, :kind=>:attribute}
end
