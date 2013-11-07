class Cda::ClinicalDocument
  include Virtus.model
  attribute :authenticator, Array[Cda::Authenticator], annotations: {:multiple=>true}
  attribute :author, Array[Cda::Author], annotations: {:multiple=>true}
  attribute :authorization, Array[Cda::Authorization], annotations: {:multiple=>true}
  attribute :class_code, Cda::ActClinicalDocument, annotations: {:kind=>:attribute}
  attribute :code, Cda::CE
  attribute :component, Cda::Component2
  attribute :component_of, Cda::Component1
  attribute :confidentiality_code, Cda::CE
  attribute :copy_time, Cda::TS
  attribute :custodian, Cda::Custodian
  attribute :data_enterer, Cda::DataEnterer
  attribute :documentation_of, Array[Cda::DocumentationOf], annotations: {:multiple=>true}
  attribute :effective_time, Cda::TS
  attribute :id, Cda::II
  attribute :in_fulfillment_of, Array[Cda::InFulfillmentOf], annotations: {:multiple=>true}
  attribute :informant, Array[Cda::Informant12], annotations: {:multiple=>true}
  attribute :information_recipient, Array[Cda::InformationRecipient], annotations: {:multiple=>true}
  attribute :language_code, Cda::CS
  attribute :legal_authenticator, Cda::LegalAuthenticator
  attribute :mood_code, Cda::ActMood, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :participant, Array[Cda::Participant1], annotations: {:multiple=>true}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :record_target, Array[Cda::RecordTarget], annotations: {:multiple=>true}
  attribute :related_document, Array[Cda::RelatedDocument], annotations: {:multiple=>true}
  attribute :set_id, Cda::II
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :title, Cda::ST
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :version_number, Cda::INT
end
