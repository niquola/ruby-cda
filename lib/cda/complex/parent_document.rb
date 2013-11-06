class Cda::ParentDocument
  include Virtus.model
  attribute :class_code, Cda::ActClinicalDocument, annotations: {:kind=>:attribute}
  attribute :code, Cda::CD
  attribute :id, Array[Cda::II]
  attribute :mood_code, Cda::ActMood, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :set_id, Cda::II
  attribute :template_id, Array[Cda::II]
  attribute :text, Cda::ED
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :version_number, Cda::INT
end
