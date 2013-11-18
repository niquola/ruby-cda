class Cda::IVL_MO < Cda::SXCM_MO
  attribute :low, Cda::IVXB_MO
  attribute :high, Cda::IVXB_MO
  attribute :center, Cda::MO
  attribute :width, Cda::MO
end
