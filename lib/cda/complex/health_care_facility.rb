class Cda::HealthCareFacility
  include Virtus.model
  attribute :class_code, Cda::RoleClassServiceDeliveryLocation, annotations: {:kind=>:attribute}
  attribute :code, Cda::CE
  attribute :id, Array[Cda::II]
  attribute :location, Cda::Place
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :service_provider_organization, Cda::Organization
  attribute :template_id, Array[Cda::II]
  attribute :type_id, Cda::InfrastructureRootTypeId
end
