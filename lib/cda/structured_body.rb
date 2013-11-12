class Cda::StructuredBody < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :confidentiality_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :language_code, Cda::CS, annotations: {:class=>"Cda::CS"}
  attribute :component, Array[Cda::Component3], annotations: {:multiple=>true, :class=>"Cda::Component3"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :class_code, Cda::ActClass, annotations: {:kind=>:attribute, :class=>"Cda::ActClass"}
  attribute :mood_code, Cda::ActMood, annotations: {:kind=>:attribute, :class=>"Cda::ActMood"}
end
