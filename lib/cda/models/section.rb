class Cda::Section < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :id, Cda::II
  attribute :code, Cda::CE
  attribute :title, Cda::ST
  attribute :text, Cda::StrucDocText
  attribute :confidentiality_code, Cda::CE
  attribute :language_code, Cda::CS
  attribute :subject, Cda::Subject
  attribute :author, Array[Cda::Author], annotations: {:multiple=>true}
  attribute :informant, Array[Cda::Informant12], annotations: {:multiple=>true}
  attribute :entry, Array[Cda::Entry], annotations: {:multiple=>true}
  attribute :component, Array[Cda::Component5], annotations: {:multiple=>true}
  attribute :id, String, annotations: {:kind=>:attribute}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :class_code, Cda::ActClass, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :mood_code, Cda::ActMood, annotations: {:use=>:optional, :kind=>:attribute}
end
