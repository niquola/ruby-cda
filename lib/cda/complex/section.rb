class Cda::Section
  include Virtus.model
  attribute :id, String, annotations: {:kind=>:attribute}
  attribute :author, Array[Cda::Author], annotations: {:multiple=>true}
  attribute :class_code, Cda::ActClass, annotations: {:kind=>:attribute}
  attribute :code, Cda::CE
  attribute :component, Array[Cda::Component5], annotations: {:multiple=>true}
  attribute :confidentiality_code, Cda::CE
  attribute :entry, Array[Cda::Entry], annotations: {:multiple=>true}
  attribute :id, Cda::II
  attribute :informant, Array[Cda::Informant12], annotations: {:multiple=>true}
  attribute :language_code, Cda::CS
  attribute :mood_code, Cda::ActMood, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :subject, Cda::Subject
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :text, Cda::StrucDocText
  attribute :title, Cda::ST
  attribute :type_id, Cda::InfrastructureRootTypeId
end
