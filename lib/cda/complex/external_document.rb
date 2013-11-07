class Cda::ExternalDocument
  include Virtus.model
  attribute :class_code, Cda::ActClassDocument, annotations: {:kind=>:attribute}
  attribute :code, Cda::CD
  attribute :id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :mood_code, Cda::ActMood, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :set_id, Cda::II
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :text, Cda::ED
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :version_number, Cda::INT
end
