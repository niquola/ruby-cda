class Cda::PlayingEntity < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :code, Cda::CE
  attribute :quantity, Array[Cda::PQ], annotations: {:multiple=>true}
  attribute :name, Array[Cda::PN], annotations: {:multiple=>true}
  attribute :birth_time, Cda::TS
  attribute :desc, Cda::ED
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :class_code, Cda::EntityClassRoot, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:use=>:optional, :kind=>:attribute}
end
