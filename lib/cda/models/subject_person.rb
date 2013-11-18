class Cda::SubjectPerson < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :id, Cda::II
  attribute :name, Array[Cda::PN], annotations: {:multiple=>true}
  attribute :administrative_gender_code, Cda::CE
  attribute :birth_time, Cda::TS
  attribute :deceased_ind, Cda::BL
  attribute :deceased_time, Cda::TS
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :class_code, Cda::EntityClass, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:use=>:optional, :kind=>:attribute}
end
