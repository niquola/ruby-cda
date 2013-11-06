class Cda::StructuredBody
  include Virtus.model
  attribute :class_code, Cda::ActClass, annotations: {:kind=>:attribute}
  attribute :component, Array[Cda::Component3]
  attribute :confidentiality_code, Cda::CE
  attribute :language_code, Cda::CS
  attribute :mood_code, Cda::ActMood, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :template_id, Array[Cda::II]
  attribute :type_id, Cda::InfrastructureRootTypeId
end
