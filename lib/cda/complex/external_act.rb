class Cda::ExternalAct
  include Virtus.model
  attribute :class_code, Cda::ActClassRoot, annotations: {:kind=>:attribute}
  attribute :code, Cda::CD
  attribute :id, Array[Cda::II]
  attribute :mood_code, Cda::ActMood, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :template_id, Array[Cda::II]
  attribute :text, Cda::ED
  attribute :type_id, Cda::InfrastructureRootTypeId
end
