class Cda::Specimen
  include Virtus.model
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :specimen_role, Cda::SpecimenRole
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :type_code, Cda::ParticipationType, annotations: {:kind=>:attribute}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
