class Cda::PlayingEntity
  include Virtus.model
  attribute :birth_time, Cda::TS
  attribute :class_code, Cda::EntityClassRoot, annotations: {:kind=>:attribute}
  attribute :code, Cda::CE
  attribute :desc, Cda::ED
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:kind=>:attribute}
  attribute :name, Array[Cda::PN], annotations: {:multiple=>true}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :quantity, Array[Cda::PQ], annotations: {:multiple=>true}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
