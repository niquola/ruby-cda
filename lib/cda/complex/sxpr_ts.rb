class Cda::SXPR_TS < Cda::SXCM_TS
  include Virtus.model
  attribute :comp, Array[Cda::SXCM_TS]
end
