class Cda::IVL_TS < Cda::SXCM_TS
  include Virtus.model
  attribute :center, Cda::TS
  attribute :high, Cda::IVXB_TS
  attribute :low, Cda::IVXB_TS
  attribute :width, Cda::PQ
  attribute :width, Cda::PQ
end
