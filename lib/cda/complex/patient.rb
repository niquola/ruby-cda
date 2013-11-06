class Cda::Patient
  include Virtus.model
  attribute :administrative_gender_code, Cda::CE
  attribute :birth_time, Cda::TS
  attribute :birthplace, Cda::Birthplace
  attribute :class_code, Cda::EntityClass, annotations: {:kind=>:attribute}
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:kind=>:attribute}
  attribute :ethnic_group_code, Cda::CE
  attribute :guardian, Array[Cda::Guardian]
  attribute :id, Cda::II
  attribute :language_communication, Array[Cda::LanguageCommunication]
  attribute :marital_status_code, Cda::CE
  attribute :name, Array[Cda::PN]
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :race_code, Cda::CE
  attribute :race_code, Cda::CE
  attribute :realm_code, Array[Cda::CS]
  attribute :religious_affiliation_code, Cda::CE
  attribute :template_id, Array[Cda::II]
  attribute :type_id, Cda::InfrastructureRootTypeId
end
