class Cda::ClinicalDocument < Cda::Base
  attribute :authenticator, Array[Cda::Authenticator], annotations: {:multiple=>true, :class=>"Cda::Authenticator"}
  attribute :author, Array[Cda::Author], annotations: {:multiple=>true, :class=>"Cda::Author"}
  attribute :authorization, Array[Cda::Authorization], annotations: {:multiple=>true, :class=>"Cda::Authorization"}
  attribute :class_code, Cda::ActClinicalDocument, annotations: {:kind=>:attribute, :class=>"Cda::ActClinicalDocument"}
  attribute :code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :component, Cda::Component2, annotations: {:class=>"Cda::Component2"}
  attribute :component_of, Cda::Component1, annotations: {:class=>"Cda::Component1"}
  attribute :confidentiality_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :copy_time, Cda::TS, annotations: {:class=>"Cda::TS"}
  attribute :custodian, Cda::Custodian, annotations: {:class=>"Cda::Custodian"}
  attribute :data_enterer, Cda::DataEnterer, annotations: {:class=>"Cda::DataEnterer"}
  attribute :documentation_of, Array[Cda::DocumentationOf], annotations: {:multiple=>true, :class=>"Cda::DocumentationOf"}
  attribute :effective_time, Cda::TS, annotations: {:class=>"Cda::TS"}
  attribute :id, Cda::II, annotations: {:class=>"Cda::II"}
  attribute :in_fulfillment_of, Array[Cda::InFulfillmentOf], annotations: {:multiple=>true, :class=>"Cda::InFulfillmentOf"}
  attribute :informant, Array[Cda::Informant12], annotations: {:multiple=>true, :class=>"Cda::Informant12"}
  attribute :information_recipient, Array[Cda::InformationRecipient], annotations: {:multiple=>true, :class=>"Cda::InformationRecipient"}
  attribute :language_code, Cda::CS, annotations: {:class=>"Cda::CS"}
  attribute :legal_authenticator, Cda::LegalAuthenticator, annotations: {:class=>"Cda::LegalAuthenticator"}
  attribute :mood_code, Cda::ActMood, annotations: {:kind=>:attribute, :class=>"Cda::ActMood"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :participant, Array[Cda::Participant1], annotations: {:multiple=>true, :class=>"Cda::Participant1"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :record_target, Array[Cda::RecordTarget], annotations: {:multiple=>true, :class=>"Cda::RecordTarget"}
  attribute :related_document, Array[Cda::RelatedDocument], annotations: {:multiple=>true, :class=>"Cda::RelatedDocument"}
  attribute :set_id, Cda::II, annotations: {:class=>"Cda::II"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :title, Cda::ST, annotations: {:class=>"Cda::ST"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :version_number, Cda::INT, annotations: {:class=>"Cda::INT"}
end
