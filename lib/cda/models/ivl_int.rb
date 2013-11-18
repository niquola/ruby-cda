class Cda::IVL_INT < Cda::SXCM_INT
  attribute :low, Cda::IVXB_INT
  attribute :high, Cda::IVXB_INT
  attribute :center, Cda::INT
  attribute :width, Cda::INT
end
