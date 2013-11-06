class Cda::Performer1
  include Virtus.model
  attribute :assigned_entity, Cda::AssignedEntity
  attribute :function_code, Cda::CE
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :template_id, Array[Cda::II]
  attribute :time, Cda::IVL_TS
  attribute :type_code, Cda::XServiceEventPerformer, annotations: {:kind=>:attribute}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
