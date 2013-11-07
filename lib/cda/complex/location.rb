class Cda::Location
  include Virtus.model
  attribute :health_care_facility, Cda::HealthCareFacility, annotations: {:class=>"Cda::HealthCareFacility"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :type_code, Cda::ParticipationTargetLocation, annotations: {:kind=>:attribute, :class=>"Cda::ParticipationTargetLocation"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
