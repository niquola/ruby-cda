class Cda::HealthCareFacility < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :code, Cda::CE
  attribute :location, Cda::Place
  attribute :service_provider_organization, Cda::Organization
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :class_code, Cda::RoleClassServiceDeliveryLocation, annotations: {:use=>:optional, :kind=>:attribute}
end
