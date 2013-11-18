class Cda::Author < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :function_code, Cda::CE
  attribute :time, Cda::TS
  attribute :assigned_author, Cda::AssignedAuthor
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :type_code, Cda::ParticipationType, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :context_control_code, Cda::ContextControl, annotations: {:use=>:optional, :kind=>:attribute}
end
