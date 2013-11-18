class Cda::ClinicalDocument < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :id, Cda::II
  attribute :code, Cda::CE
  attribute :title, Cda::ST
  attribute :effective_time, Cda::TS
  attribute :confidentiality_code, Cda::CE
  attribute :language_code, Cda::CS
  attribute :set_id, Cda::II
  attribute :version_number, Cda::INT
  attribute :copy_time, Cda::TS
  attribute :record_target, Array[Cda::RecordTarget], annotations: {:multiple=>true}
  attribute :author, Array[Cda::Author], annotations: {:multiple=>true}
  attribute :data_enterer, Cda::DataEnterer
  attribute :informant, Array[Cda::Informant12], annotations: {:multiple=>true}
  attribute :custodian, Cda::Custodian
  attribute :information_recipient, Array[Cda::InformationRecipient], annotations: {:multiple=>true}
  attribute :legal_authenticator, Cda::LegalAuthenticator
  attribute :authenticator, Array[Cda::Authenticator], annotations: {:multiple=>true}
  attribute :participant, Array[Cda::Participant1], annotations: {:multiple=>true}
  attribute :in_fulfillment_of, Array[Cda::InFulfillmentOf], annotations: {:multiple=>true}
  attribute :documentation_of, Array[Cda::DocumentationOf], annotations: {:multiple=>true}
  attribute :related_document, Array[Cda::RelatedDocument], annotations: {:multiple=>true}
  attribute :authorization, Array[Cda::Authorization], annotations: {:multiple=>true}
  attribute :component_of, Cda::Component1
  attribute :component, Cda::Component2
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :class_code, Cda::ActClinicalDocument, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :mood_code, Cda::ActMood, annotations: {:use=>:optional, :kind=>:attribute}
end
