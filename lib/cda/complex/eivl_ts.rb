class Cda::EIVL_TS < Cda::SXCM_TS
  include Virtus.model
  attribute :event, Cda::EIVLEvent
  attribute :offset, Cda::IVL_PQ
end
