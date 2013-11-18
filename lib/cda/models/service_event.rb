class Cda::ServiceEvent < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :code, Cda::CE
  attribute :effective_time, Cda::IVL_TS
  attribute :performer, Array[Cda::Performer1], annotations: {:multiple=>true}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :class_code, Cda::ActClassRoot, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :mood_code, Cda::ActMood, annotations: {:use=>:optional, :kind=>:attribute}
end
