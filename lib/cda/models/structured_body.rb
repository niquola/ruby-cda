class Cda::StructuredBody < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :confidentiality_code, Cda::CE
  attribute :language_code, Cda::CS
  attribute :component, Array[Cda::Component3], annotations: {:multiple=>true}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :class_code, Cda::ActClass, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :mood_code, Cda::ActMood, annotations: {:use=>:optional, :kind=>:attribute}
end
