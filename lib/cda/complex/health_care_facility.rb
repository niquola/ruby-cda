class Cda::HealthCareFacility
  include Virtus.model
  attribute :class_code, Cda::RoleClassServiceDeliveryLocation, annotations: {:kind=>:attribute, :class=>"Cda::RoleClassServiceDeliveryLocation"}
  attribute :code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :location, Cda::Place, annotations: {:class=>"Cda::Place"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :service_provider_organization, Cda::Organization, annotations: {:class=>"Cda::Organization"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
