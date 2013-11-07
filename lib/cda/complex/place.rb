class Cda::Place
  include Virtus.model
  attribute :addr, Cda::AD
  attribute :class_code, Cda::EntityClassPlace, annotations: {:kind=>:attribute}
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:kind=>:attribute}
  attribute :name, Cda::EN
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
