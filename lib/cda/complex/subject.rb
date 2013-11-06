class Cda::Subject
  include Virtus.model
  attribute :awareness_code, Cda::CE
  attribute :context_control_code, Cda::ContextControl, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :related_subject, Cda::RelatedSubject
  attribute :template_id, Array[Cda::II]
  attribute :type_code, Cda::ParticipationTargetSubject, annotations: {:kind=>:attribute}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
