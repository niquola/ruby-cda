class Cda::Performer1 < Cda::Base
  attribute :assigned_entity, Cda::AssignedEntity, annotations: {:class=>"Cda::AssignedEntity"}
  attribute :function_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :time, Cda::IVL_TS, annotations: {:class=>"Cda::IVL_TS"}
  attribute :type_code, Cda::XServiceEventPerformer, annotations: {:kind=>:attribute, :class=>"Cda::XServiceEventPerformer"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
