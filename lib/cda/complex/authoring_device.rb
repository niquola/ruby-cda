class Cda::AuthoringDevice
  include Virtus.model
  attribute :as_maintained_entity, Array[Cda::MaintainedEntity], annotations: {:multiple=>true}
  attribute :class_code, Cda::EntityClassDevice, annotations: {:kind=>:attribute}
  attribute :code, Cda::CE
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:kind=>:attribute}
  attribute :manufacturer_model_name, Cda::SC
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :software_name, Cda::SC
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
