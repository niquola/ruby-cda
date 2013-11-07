class Cda::Order
  include Virtus.model
  attribute :class_code, Cda::ActClassRoot, annotations: {:kind=>:attribute}
  attribute :code, Cda::CE
  attribute :id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :mood_code, Cda::ActMood, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :priority_code, Cda::CE
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
