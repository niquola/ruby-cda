class Cda::Authenticator
  include Virtus.model
  attribute :assigned_entity, Cda::AssignedEntity
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :signature_code, Cda::CS
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :time, Cda::TS
  attribute :type_code, Cda::ParticipationType, annotations: {:kind=>:attribute}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
