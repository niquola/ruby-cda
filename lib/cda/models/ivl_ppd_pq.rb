class Cda::IVL_PPD_PQ < Cda::SXCM_PPD_PQ
  attribute :low, Cda::IVXB_PPD_PQ
  attribute :high, Cda::IVXB_PPD_PQ
  attribute :center, Cda::PPD_PQ
  attribute :width, Cda::PPD_PQ
end
