class Cda::SXCM_PPD_TS < Cda::PPD_TS
  attribute :operator, Cda::SetOperator, annotations: {:use=>:optional, :kind=>:attribute}
end
