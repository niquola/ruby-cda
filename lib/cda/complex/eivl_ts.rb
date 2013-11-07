class Cda::EIVL_TS < Cda::SXCM_TS
  attribute :event, Cda::EIVLEvent, annotations: {:class=>"Cda::EIVLEvent"}
  attribute :offset, Cda::IVL_PQ, annotations: {:class=>"Cda::IVL_PQ"}
end
