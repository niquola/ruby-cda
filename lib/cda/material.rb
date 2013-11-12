class Cda::Material < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :name, Cda::EN, annotations: {:class=>"Cda::EN"}
  attribute :lot_number_text, Cda::ST, annotations: {:class=>"Cda::ST"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :class_code, Cda::EntityClassManufacturedMaterial, annotations: {:kind=>:attribute, :class=>"Cda::EntityClassManufacturedMaterial"}
  attribute :determiner_code, Cda::EntityDeterminerDetermined, annotations: {:kind=>:attribute, :class=>"Cda::EntityDeterminerDetermined"}
end
