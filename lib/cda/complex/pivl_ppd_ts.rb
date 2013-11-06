class Cda::PIVL_PPD_TS < Cda::SXCM_PPD_TS
  include Virtus.model
  attribute :alignment, Cda::CalendarCycle, annotations: {:kind=>:attribute}
  attribute :institution_specified, Cda::Bl, annotations: {:kind=>:attribute}
  attribute :period, Cda::PPD_PQ
  attribute :phase, Cda::IVL_PPD_TS
end
