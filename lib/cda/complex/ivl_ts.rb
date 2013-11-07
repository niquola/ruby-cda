class Cda::IVL_TS < Cda::SXCM_TS
  attribute :center, Cda::TS, annotations: {:class=>"Cda::TS"}
  attribute :high, Cda::IVXB_TS, annotations: {:class=>"Cda::IVXB_TS"}
  attribute :low, Cda::IVXB_TS, annotations: {:class=>"Cda::IVXB_TS"}
  attribute :width, Cda::PQ, annotations: {:class=>"Cda::PQ"}
  attribute :width, Cda::PQ, annotations: {:class=>"Cda::PQ"}
end
