class Cda::SubjectPerson
  include Virtus.model
  attribute :administrative_gender_code, Cda::CE
  attribute :birth_time, Cda::TS
  attribute :class_code, Cda::EntityClass, annotations: {:kind=>:attribute}
  attribute :deceased_ind, Cda::BL
  attribute :deceased_time, Cda::TS
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:kind=>:attribute}
  attribute :id, Cda::II
  attribute :name, Array[Cda::PN]
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :template_id, Array[Cda::II]
  attribute :type_id, Cda::InfrastructureRootTypeId
end
