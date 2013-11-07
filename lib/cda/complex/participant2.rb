class Cda::Participant2
  include Virtus.model
  attribute :awareness_code, Cda::CE
  attribute :context_control_code, Cda::ContextControl, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :participant_role, Cda::ParticipantRole
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :time, Cda::IVL_TS
  attribute :type_code, Cda::ParticipationType, annotations: {:kind=>:attribute}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
