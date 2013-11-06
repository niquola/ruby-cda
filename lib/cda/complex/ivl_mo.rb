class Cda::IVL_MO < Cda::SXCM_MO
  include Virtus.model
  attribute :center, Cda::MO
  attribute :high, Cda::IVXB_MO
  attribute :low, Cda::IVXB_MO
  attribute :width, Cda::MO
  attribute :width, Cda::MO
end
