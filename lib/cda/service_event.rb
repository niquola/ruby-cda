class Cda::ServiceEvent < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :effective_time, Cda::IVL_TS, annotations: {:class=>"Cda::IVL_TS"}
  attribute :performer, Array[Cda::Performer1], annotations: {:multiple=>true, :class=>"Cda::Performer1"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :class_code, Cda::ActClassRoot, annotations: {:kind=>:attribute, :class=>"Cda::ActClassRoot"}
  attribute :mood_code, Cda::ActMood, annotations: {:kind=>:attribute, :class=>"Cda::ActMood"}
end
