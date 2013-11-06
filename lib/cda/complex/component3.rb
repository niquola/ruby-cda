class Cda::Component3
  include Virtus.model
  attribute :context_conduction_ind, Cda::Bl, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :section, Cda::Section
  attribute :template_id, Array[Cda::II]
  attribute :type_code, Cda::ActRelationshipHasComponent, annotations: {:kind=>:attribute}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
