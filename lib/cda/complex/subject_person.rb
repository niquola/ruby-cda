class Cda::SubjectPerson < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :id, Cda::II, annotations: {:class=>"Cda::II"}
  attribute :name, Array[Cda::PN], annotations: {:multiple=>true, :class=>"Cda::PN"}
  attribute :administrative_gender_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :birth_time, Cda::TS, annotations: {:class=>"Cda::TS"}
  attribute :deceased_ind, Cda::BL, annotations: {:class=>"Cda::BL"}
  attribute :deceased_time, Cda::TS, annotations: {:class=>"Cda::TS"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :class_code, Cda::EntityClass, annotations: {:kind=>:attribute, :class=>"Cda::EntityClass"}
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:kind=>:attribute, :class=>"Cda::EntityDeterminer"}
end
