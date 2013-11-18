class Cda::PIVL_TS < Cda::SXCM_TS
  attribute :phase, Cda::IVL_TS
  attribute :period, Cda::PQ
  attribute :alignment, Cda::CalendarCycle, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :institution_specified, Boolean, annotations: {:use=>:optional, :kind=>:attribute}
end
