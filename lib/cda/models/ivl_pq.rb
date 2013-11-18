class Cda::IVL_PQ < Cda::SXCM_PQ
  attribute :low, Cda::IVXB_PQ, annotations: {:class=>"Cda::IVXB_PQ"}
  attribute :width, Cda::PQ, annotations: {:class=>"Cda::PQ"}
  attribute :high, Cda::IVXB_PQ, annotations: {:class=>"Cda::IVXB_PQ"}
  attribute :width, Cda::PQ, annotations: {:class=>"Cda::PQ"}
  attribute :high, Cda::IVXB_PQ, annotations: {:class=>"Cda::IVXB_PQ"}
  attribute :center, Cda::PQ, annotations: {:class=>"Cda::PQ"}
  attribute :width, Cda::PQ, annotations: {:class=>"Cda::PQ"}
end
