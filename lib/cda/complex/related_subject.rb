class Cda::RelatedSubject
  include Virtus.model
  attribute :addr, Array[Cda::AD]
  attribute :class_code, Cda::XDocumentSubject, annotations: {:kind=>:attribute}
  attribute :code, Cda::CE
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :subject, Cda::SubjectPerson
  attribute :telecom, Array[Cda::TEL]
  attribute :template_id, Array[Cda::II]
  attribute :type_id, Cda::InfrastructureRootTypeId
end
