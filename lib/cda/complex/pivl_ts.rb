class Cda::PIVL_TS < Cda::SXCM_TS
  attribute :alignment, Cda::CalendarCycle, annotations: {:kind=>:attribute}
  attribute :institution_specified, Cda::Bl, annotations: {:kind=>:attribute}
  attribute :period, Cda::PQ
  attribute :phase, Cda::IVL_TS
end
