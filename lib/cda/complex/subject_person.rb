class Cda::SubjectPerson
  include Virtus.model
  attribute :administrative_gender_code, Cda::CE
  attribute :birth_time, Cda::TS
  attribute :class_code, Cda::EntityClass, annotations: {:kind=>:attribute}
  attribute :deceased_ind, Cda::BL
  attribute :deceased_time, Cda::TS
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:kind=>:attribute}
  attribute :id, Cda::II
  attribute :name, Array[Cda::PN], annotations: {:multiple=>true}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
