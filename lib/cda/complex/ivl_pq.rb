class Cda::IVL_PQ < Cda::SXCM_PQ
  include Virtus.model
  attribute :center, Cda::PQ
  attribute :high, Cda::IVXB_PQ
  attribute :low, Cda::IVXB_PQ
  attribute :width, Cda::PQ
  attribute :width, Cda::PQ
end
