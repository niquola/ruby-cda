class Cda::RelatedSubject
  include Virtus.model
  attribute :addr, Array[Cda::AD], annotations: {:multiple=>true, :class=>"Cda::AD"}
  attribute :class_code, Cda::XDocumentSubject, annotations: {:kind=>:attribute, :class=>"Cda::XDocumentSubject"}
  attribute :code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :subject, Cda::SubjectPerson, annotations: {:class=>"Cda::SubjectPerson"}
  attribute :telecom, Array[Cda::TEL], annotations: {:multiple=>true, :class=>"Cda::TEL"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
