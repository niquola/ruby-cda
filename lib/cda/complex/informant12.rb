class Cda::Informant12
  include Virtus.model
  attribute :context_control_code, Cda::ContextControl, annotations: {:kind=>:attribute, :class=>"Cda::ContextControl"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :type_code, Cda::ParticipationType, annotations: {:kind=>:attribute, :class=>"Cda::ParticipationType"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
