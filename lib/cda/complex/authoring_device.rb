class Cda::AuthoringDevice < Cda::Base
  attribute :as_maintained_entity, Array[Cda::MaintainedEntity], annotations: {:multiple=>true, :class=>"Cda::MaintainedEntity"}
  attribute :class_code, Cda::EntityClassDevice, annotations: {:kind=>:attribute, :class=>"Cda::EntityClassDevice"}
  attribute :code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:kind=>:attribute, :class=>"Cda::EntityDeterminer"}
  attribute :manufacturer_model_name, Cda::SC, annotations: {:class=>"Cda::SC"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :software_name, Cda::SC, annotations: {:class=>"Cda::SC"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
