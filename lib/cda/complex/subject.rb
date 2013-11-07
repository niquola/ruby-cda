class Cda::Subject < Cda::Base
  attribute :awareness_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :context_control_code, Cda::ContextControl, annotations: {:kind=>:attribute, :class=>"Cda::ContextControl"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :related_subject, Cda::RelatedSubject, annotations: {:class=>"Cda::RelatedSubject"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :type_code, Cda::ParticipationTargetSubject, annotations: {:kind=>:attribute, :class=>"Cda::ParticipationTargetSubject"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
