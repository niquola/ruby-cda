class Cda::StructuredBody
  include Virtus.model
  attribute :class_code, Cda::ActClass, annotations: {:kind=>:attribute}
  attribute :component, Array[Cda::Component3], annotations: {:multiple=>true}
  attribute :confidentiality_code, Cda::CE
  attribute :language_code, Cda::CS
  attribute :mood_code, Cda::ActMood, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
