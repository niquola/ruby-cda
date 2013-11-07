class Cda::ObservationRange < Cda::Base
  attribute :class_code, Cda::ActClassObservation, annotations: {:kind=>:attribute, :class=>"Cda::ActClassObservation"}
  attribute :code, Cda::CD, annotations: {:class=>"Cda::CD"}
  attribute :interpretation_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :mood_code, Cda::ActMood, annotations: {:kind=>:attribute, :class=>"Cda::ActMood"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :text, Cda::ED, annotations: {:class=>"Cda::ED"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :value, Object, annotations: {:class=>"Object"}
end
