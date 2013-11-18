class Cda::IVL_PQ < Cda::SXCM_PQ
  attribute :low, Cda::IVXB_PQ
  attribute :high, Cda::IVXB_PQ
  attribute :center, Cda::PQ
  attribute :width, Cda::PQ
end
