class Cda::LanguageCommunication
  include Virtus.model
  attribute :language_code, Cda::CS
  attribute :mode_code, Cda::CE
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :preference_ind, Cda::BL
  attribute :proficiency_level_code, Cda::CE
  attribute :realm_code, Array[Cda::CS]
  attribute :template_id, Array[Cda::II]
  attribute :type_id, Cda::InfrastructureRootTypeId
end
