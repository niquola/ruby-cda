class Cda::ON < Cda::EN
  attribute :use, Cda::Set_EntityNameUse, annotations: {:kind=>:attribute, :class=>"Cda::Set_EntityNameUse"}
  attribute :valid_time, Cda::IVL_TS, annotations: {:class=>"Cda::IVL_TS"}
end
