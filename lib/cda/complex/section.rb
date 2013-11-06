class Cda::Section
  include Virtus.model
  attribute :id, String, annotations: {:kind=>:attribute}
  attribute :author, Array[Cda::Author]
  attribute :class_code, Cda::ActClass, annotations: {:kind=>:attribute}
  attribute :code, Cda::CE
  attribute :component, Array[Cda::Component5]
  attribute :confidentiality_code, Cda::CE
  attribute :entry, Array[Cda::Entry]
  attribute :id, Cda::II
  attribute :informant, Array[Cda::Informant12]
  attribute :language_code, Cda::CS
  attribute :mood_code, Cda::ActMood, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :subject, Cda::Subject
  attribute :template_id, Array[Cda::II]
  attribute :text, Cda::StrucDocText
  attribute :title, Cda::ST
  attribute :type_id, Cda::InfrastructureRootTypeId
end
