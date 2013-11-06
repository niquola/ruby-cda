class Cda::Reference
  include Virtus.model
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :seperatable_ind, Cda::BL
  attribute :template_id, Array[Cda::II]
  attribute :type_code, Cda::XActRelationshipExternalReference, annotations: {:kind=>:attribute}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
