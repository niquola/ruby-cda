class Cda::IVL_REAL < Cda::SXCM_REAL
  attribute :low, Cda::IVXB_REAL, annotations: {:class=>"Cda::IVXB_REAL"}
  attribute :width, Cda::REAL, annotations: {:class=>"Cda::REAL"}
  attribute :high, Cda::IVXB_REAL, annotations: {:class=>"Cda::IVXB_REAL"}
  attribute :center, Cda::REAL, annotations: {:class=>"Cda::REAL"}
  attribute :width, Cda::REAL, annotations: {:class=>"Cda::REAL"}
end
