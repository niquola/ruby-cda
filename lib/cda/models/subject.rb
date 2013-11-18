class Cda::Subject < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :awareness_code, Cda::CE
  attribute :related_subject, Cda::RelatedSubject
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :type_code, Cda::ParticipationTargetSubject, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :context_control_code, Cda::ContextControl, annotations: {:use=>:optional, :kind=>:attribute}
end
