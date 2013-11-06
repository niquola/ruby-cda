class Cda::IVL_REAL < Cda::SXCM_REAL
  include Virtus.model
  attribute :center, Cda::REAL
  attribute :high, Cda::IVXB_REAL
  attribute :low, Cda::IVXB_REAL
  attribute :width, Cda::REAL
  attribute :width, Cda::REAL
end
