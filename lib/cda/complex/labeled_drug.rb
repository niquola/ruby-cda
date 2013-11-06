class Cda::LabeledDrug
  include Virtus.model
  attribute :class_code, Cda::EntityClassManufacturedMaterial, annotations: {:kind=>:attribute}
  attribute :code, Cda::CE
  attribute :determiner_code, Cda::EntityDeterminerDetermined, annotations: {:kind=>:attribute}
  attribute :name, Cda::EN
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :template_id, Array[Cda::II]
  attribute :type_id, Cda::InfrastructureRootTypeId
end
