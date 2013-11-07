class Cda::Author
  include Virtus.model
  attribute :assigned_author, Cda::AssignedAuthor
  attribute :context_control_code, Cda::ContextControl, annotations: {:kind=>:attribute}
  attribute :function_code, Cda::CE
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :time, Cda::TS
  attribute :type_code, Cda::ParticipationType, annotations: {:kind=>:attribute}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
