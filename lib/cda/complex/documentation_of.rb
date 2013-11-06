class Cda::DocumentationOf
  include Virtus.model
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :service_event, Cda::ServiceEvent
  attribute :template_id, Array[Cda::II]
  attribute :type_code, Cda::ActRelationshipType, annotations: {:kind=>:attribute}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
