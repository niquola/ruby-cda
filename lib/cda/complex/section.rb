class Cda::Section
  include Virtus.model
  attribute :id, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :author, Array[Cda::Author], annotations: {:multiple=>true, :class=>"Cda::Author"}
  attribute :class_code, Cda::ActClass, annotations: {:kind=>:attribute, :class=>"Cda::ActClass"}
  attribute :code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :component, Array[Cda::Component5], annotations: {:multiple=>true, :class=>"Cda::Component5"}
  attribute :confidentiality_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :entry, Array[Cda::Entry], annotations: {:multiple=>true, :class=>"Cda::Entry"}
  attribute :id, Cda::II, annotations: {:class=>"Cda::II"}
  attribute :informant, Array[Cda::Informant12], annotations: {:multiple=>true, :class=>"Cda::Informant12"}
  attribute :language_code, Cda::CS, annotations: {:class=>"Cda::CS"}
  attribute :mood_code, Cda::ActMood, annotations: {:kind=>:attribute, :class=>"Cda::ActMood"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :subject, Cda::Subject, annotations: {:class=>"Cda::Subject"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :text, Cda::StrucDocText, annotations: {:class=>"Cda::StrucDocText"}
  attribute :title, Cda::ST, annotations: {:class=>"Cda::ST"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
