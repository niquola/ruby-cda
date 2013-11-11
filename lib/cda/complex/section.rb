class Cda::Section < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :id, Cda::II, annotations: {:class=>"Cda::II"}
  attribute :code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :title, Cda::ST, annotations: {:class=>"Cda::ST"}
  attribute :text, Cda::StrucDocText, annotations: {:class=>"Cda::StrucDocText"}
  attribute :confidentiality_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :language_code, Cda::CS, annotations: {:class=>"Cda::CS"}
  attribute :subject, Cda::Subject, annotations: {:class=>"Cda::Subject"}
  attribute :author, Array[Cda::Author], annotations: {:multiple=>true, :class=>"Cda::Author"}
  attribute :informant, Array[Cda::Informant12], annotations: {:multiple=>true, :class=>"Cda::Informant12"}
  attribute :entry, Array[Cda::Entry], annotations: {:multiple=>true, :class=>"Cda::Entry"}
  attribute :component, Array[Cda::Component5], annotations: {:multiple=>true, :class=>"Cda::Component5"}
  attribute :id, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :class_code, Cda::ActClass, annotations: {:kind=>:attribute, :class=>"Cda::ActClass"}
  attribute :mood_code, Cda::ActMood, annotations: {:kind=>:attribute, :class=>"Cda::ActMood"}
end
