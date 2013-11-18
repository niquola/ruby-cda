class Cda::ParentDocument < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :code, Cda::CD
  attribute :text, Cda::ED
  attribute :set_id, Cda::II
  attribute :version_number, Cda::INT
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :class_code, Cda::ActClinicalDocument, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :mood_code, Cda::ActMood, annotations: {:use=>:optional, :kind=>:attribute}
end
