class Cda::Patient < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :id, Cda::II, annotations: {:class=>"Cda::II"}
  attribute :name, Array[Cda::PN], annotations: {:multiple=>true, :class=>"Cda::PN"}
  attribute :administrative_gender_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :birth_time, Cda::TS, annotations: {:class=>"Cda::TS"}
  attribute :marital_status_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :religious_affiliation_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :race_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :race_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :ethnic_group_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :guardian, Array[Cda::Guardian], annotations: {:multiple=>true, :class=>"Cda::Guardian"}
  attribute :birthplace, Cda::Birthplace, annotations: {:class=>"Cda::Birthplace"}
  attribute :language_communication, Array[Cda::LanguageCommunication], annotations: {:multiple=>true, :class=>"Cda::LanguageCommunication"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :class_code, Cda::EntityClass, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::EntityClass"}
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::EntityDeterminer"}
end
