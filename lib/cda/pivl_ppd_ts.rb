class Cda::PIVL_PPD_TS < Cda::SXCM_PPD_TS
  attribute :phase, Cda::IVL_PPD_TS, annotations: {:class=>"Cda::IVL_PPD_TS"}
  attribute :period, Cda::PPD_PQ, annotations: {:class=>"Cda::PPD_PQ"}
  attribute :alignment, Cda::CalendarCycle, annotations: {:kind=>:attribute, :class=>"Cda::CalendarCycle"}
  attribute :institution_specified, Cda::Bl, annotations: {:kind=>:attribute, :class=>"Cda::Bl"}
end
