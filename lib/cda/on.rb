class Cda::ON < Cda::EN
  attribute :delimiter, Cda::EnDelimiter, annotations: {:class=>"Cda::EnDelimiter"}
  attribute :prefix, Cda::EnPrefix, annotations: {:class=>"Cda::EnPrefix"}
  attribute :suffix, Cda::EnSuffix, annotations: {:class=>"Cda::EnSuffix"}
  attribute :valid_time, Cda::IVL_TS, annotations: {:class=>"Cda::IVL_TS"}
  attribute :use, Cda::Set_EntityNameUse, annotations: {:kind=>:attribute, :class=>"Cda::Set_EntityNameUse"}
  attribute :_text, String, annotations: {:class=>"String"}
end
