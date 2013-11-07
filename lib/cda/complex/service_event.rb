class Cda::ServiceEvent
  include Virtus.model
  attribute :class_code, Cda::ActClassRoot, annotations: {:kind=>:attribute}
  attribute :code, Cda::CE
  attribute :effective_time, Cda::IVL_TS
  attribute :id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :mood_code, Cda::ActMood, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :performer, Array[Cda::Performer1], annotations: {:multiple=>true}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
