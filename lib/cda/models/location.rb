class Cda::Location < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :health_care_facility, Cda::HealthCareFacility
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :type_code, Cda::ParticipationTargetLocation, annotations: {:use=>:optional, :kind=>:attribute}
end
