class Cda::SXPR_TS < Cda::SXCM_TS
  attribute :comp, Array[Cda::SXCM_TS], annotations: {:multiple=>true}
end
