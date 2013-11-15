class Cda::EN < Cda::ANY
  attribute :delimiter, Cda::EnDelimiter, annotations: {:class=>"Cda::EnDelimiter"}
  attribute :family, Cda::EnFamily, annotations: {:class=>"Cda::EnFamily"}
  attribute :given, Cda::EnGiven, annotations: {:class=>"Cda::EnGiven"}
  attribute :prefix, Cda::EnPrefix, annotations: {:class=>"Cda::EnPrefix"}
  attribute :suffix, Cda::EnSuffix, annotations: {:class=>"Cda::EnSuffix"}
  attribute :valid_time, Cda::IVL_TS, annotations: {:class=>"Cda::IVL_TS"}
  attribute :use, Cda::Set_EntityNameUse, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Set_EntityNameUse"}
  attribute :_text, String, annotations: {:class=>"String"}
end
