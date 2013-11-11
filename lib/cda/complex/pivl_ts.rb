class Cda::PIVL_TS < Cda::SXCM_TS
  attribute :phase, Cda::IVL_TS, annotations: {:class=>"Cda::IVL_TS"}
  attribute :period, Cda::PQ, annotations: {:class=>"Cda::PQ"}
  attribute :alignment, Cda::CalendarCycle, annotations: {:kind=>:attribute, :class=>"Cda::CalendarCycle"}
  attribute :institution_specified, Cda::Bl, annotations: {:kind=>:attribute, :class=>"Cda::Bl"}
end
