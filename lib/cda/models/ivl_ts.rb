class Cda::IVL_TS < Cda::SXCM_TS
  attribute :low, Cda::IVXB_TS
  attribute :high, Cda::IVXB_TS
  attribute :center, Cda::TS
  attribute :width, Cda::PQ
end
