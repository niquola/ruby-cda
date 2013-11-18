class Cda::Authenticator < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :time, Cda::TS
  attribute :signature_code, Cda::CS
  attribute :assigned_entity, Cda::AssignedEntity
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :type_code, Cda::ParticipationType, annotations: {:use=>:optional, :kind=>:attribute}
end
