class Cda::PIVL_TS < Cda::SXCM_TS
  attribute :phase, Cda::IVL_TS, annotations: {:class=>"Cda::IVL_TS"}
  attribute :period, Cda::PQ, annotations: {:class=>"Cda::PQ"}
  attribute :alignment, Cda::CalendarCycle, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::CalendarCycle"}
  attribute :institution_specified, Cda::Bl, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Bl"}
end
