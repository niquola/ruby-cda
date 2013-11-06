class Cda::ClinicalDocument
  include Virtus.model
  attribute :authenticator, Array[Cda::Authenticator]
  attribute :author, Array[Cda::Author]
  attribute :authorization, Array[Cda::Authorization]
  attribute :class_code, Cda::ActClinicalDocument, annotations: {:kind=>:attribute}
  attribute :code, Cda::CE
  attribute :component, Cda::Component2
  attribute :component_of, Cda::Component1
  attribute :confidentiality_code, Cda::CE
  attribute :copy_time, Cda::TS
  attribute :custodian, Cda::Custodian
  attribute :data_enterer, Cda::DataEnterer
  attribute :documentation_of, Array[Cda::DocumentationOf]
  attribute :effective_time, Cda::TS
  attribute :id, Cda::II
  attribute :in_fulfillment_of, Array[Cda::InFulfillmentOf]
  attribute :informant, Array[Cda::Informant12]
  attribute :information_recipient, Array[Cda::InformationRecipient]
  attribute :language_code, Cda::CS
  attribute :legal_authenticator, Cda::LegalAuthenticator
  attribute :mood_code, Cda::ActMood, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :participant, Array[Cda::Participant1]
  attribute :realm_code, Array[Cda::CS]
  attribute :record_target, Array[Cda::RecordTarget]
  attribute :related_document, Array[Cda::RelatedDocument]
  attribute :set_id, Cda::II
  attribute :template_id, Array[Cda::II]
  attribute :title, Cda::ST
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :version_number, Cda::INT
end
