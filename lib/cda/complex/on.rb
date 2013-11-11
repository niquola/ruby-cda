class Cda::ON < Cda::EN
  attribute :valid_time, Cda::IVL_TS, annotations: {:class=>"Cda::IVL_TS"}
  attribute :use, Cda::Set_EntityNameUse, annotations: {:kind=>:attribute, :class=>"Cda::Set_EntityNameUse"}
end
