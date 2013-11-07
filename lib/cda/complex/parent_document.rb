class Cda::ParentDocument < Cda::Base
  attribute :class_code, Cda::ActClinicalDocument, annotations: {:kind=>:attribute, :class=>"Cda::ActClinicalDocument"}
  attribute :code, Cda::CD, annotations: {:class=>"Cda::CD"}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :mood_code, Cda::ActMood, annotations: {:kind=>:attribute, :class=>"Cda::ActMood"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :set_id, Cda::II, annotations: {:class=>"Cda::II"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :text, Cda::ED, annotations: {:class=>"Cda::ED"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :version_number, Cda::INT, annotations: {:class=>"Cda::INT"}
end
