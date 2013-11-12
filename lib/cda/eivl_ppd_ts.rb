class Cda::EIVL_PPD_TS < Cda::SXCM_PPD_TS
  attribute :event, Cda::EIVLEvent, annotations: {:class=>"Cda::EIVLEvent"}
  attribute :offset, Cda::IVL_PPD_PQ, annotations: {:class=>"Cda::IVL_PPD_PQ"}
end
