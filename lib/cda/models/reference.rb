class Cda::Reference < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :seperatable_ind, Cda::BL
  attribute :external_act, Cda::ExternalAct
  attribute :external_observation, Cda::ExternalObservation
  attribute :external_procedure, Cda::ExternalProcedure
  attribute :external_document, Cda::ExternalDocument
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :type_code, Cda::XActRelationshipExternalReference, annotations: {:use=>:required, :kind=>:attribute}
end
