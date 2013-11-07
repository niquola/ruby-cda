class Cda::MaintainedEntity
  include Virtus.model
  attribute :class_code, Cda::RoleClass, annotations: {:kind=>:attribute, :class=>"Cda::RoleClass"}
  attribute :effective_time, Cda::IVL_TS, annotations: {:class=>"Cda::IVL_TS"}
  attribute :maintaining_person, Cda::Person, annotations: {:class=>"Cda::Person"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
