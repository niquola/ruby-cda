class Cda::Participant2 < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :time, Cda::IVL_TS
  attribute :awareness_code, Cda::CE
  attribute :participant_role, Cda::ParticipantRole
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :type_code, Cda::ParticipationType, annotations: {:use=>:required, :kind=>:attribute}
  attribute :context_control_code, Cda::ContextControl, annotations: {:use=>:optional, :kind=>:attribute}
end
