class Cda::ON < Cda::EN
  attribute :delimiter, Cda::EnDelimiter
  attribute :prefix, Cda::EnPrefix
  attribute :suffix, Cda::EnSuffix
  attribute :valid_time, Cda::IVL_TS
  attribute :use, Cda::Set_EntityNameUse, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :_text, String
end
