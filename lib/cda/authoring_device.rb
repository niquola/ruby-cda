class Cda::AuthoringDevice < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :manufacturer_model_name, Cda::SC, annotations: {:class=>"Cda::SC"}
  attribute :software_name, Cda::SC, annotations: {:class=>"Cda::SC"}
  attribute :as_maintained_entity, Array[Cda::MaintainedEntity], annotations: {:multiple=>true, :class=>"Cda::MaintainedEntity"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :class_code, Cda::EntityClassDevice, annotations: {:kind=>:attribute, :class=>"Cda::EntityClassDevice"}
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:kind=>:attribute, :class=>"Cda::EntityDeterminer"}
end
