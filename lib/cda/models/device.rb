class Cda::Device < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :code, Cda::CE
  attribute :manufacturer_model_name, Cda::SC
  attribute :software_name, Cda::SC
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :class_code, Cda::EntityClassDevice, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:use=>:optional, :kind=>:attribute}
end
