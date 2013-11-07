class Cda::Criterion
  include Virtus.model
  attribute :class_code, Cda::ActClassObservation, annotations: {:kind=>:attribute}
  attribute :code, Cda::CD
  attribute :mood_code, Cda::ActMood, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :text, Cda::ED
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :value, Object
end
