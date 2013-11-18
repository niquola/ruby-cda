class Cda::LanguageCommunication < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true}
  attribute :type_id, Cda::InfrastructureRootTypeId
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true}
  attribute :language_code, Cda::CS
  attribute :mode_code, Cda::CE
  attribute :proficiency_level_code, Cda::CE
  attribute :preference_ind, Cda::BL
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute}
end
