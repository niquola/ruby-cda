class Cda::PIVL_PPD_TS < Cda::SXCM_PPD_TS
  attribute :phase, Cda::IVL_PPD_TS
  attribute :period, Cda::PPD_PQ
  attribute :alignment, Cda::CalendarCycle, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :institution_specified, Boolean, annotations: {:use=>:optional, :kind=>:attribute}
end
