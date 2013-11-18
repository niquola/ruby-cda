class Cda::Reference < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :seperatable_ind, Cda::BL, annotations: {:class=>"Cda::BL"}
  attribute :external_act, Cda::ExternalAct, annotations: {:class=>"Cda::ExternalAct"}
  attribute :external_observation, Cda::ExternalObservation, annotations: {:class=>"Cda::ExternalObservation"}
  attribute :external_procedure, Cda::ExternalProcedure, annotations: {:class=>"Cda::ExternalProcedure"}
  attribute :external_document, Cda::ExternalDocument, annotations: {:class=>"Cda::ExternalDocument"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :type_code, Cda::XActRelationshipExternalReference, annotations: {:use=>:required, :kind=>:attribute, :class=>"Cda::XActRelationshipExternalReference"}
end
