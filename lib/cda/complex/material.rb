class Cda::Material
  include Virtus.model
  attribute :class_code, Cda::EntityClassManufacturedMaterial, annotations: {:kind=>:attribute}
  attribute :code, Cda::CE
  attribute :determiner_code, Cda::EntityDeterminerDetermined, annotations: {:kind=>:attribute}
  attribute :lot_number_text, Cda::ST
  attribute :name, Cda::EN
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
