class Cda::IVL_PPD_TS < Cda::SXCM_PPD_TS
  attribute :low, Cda::IVXB_PPD_TS
  attribute :high, Cda::IVXB_PPD_TS
  attribute :center, Cda::PPD_TS
  attribute :width, Cda::PPD_PQ
end
