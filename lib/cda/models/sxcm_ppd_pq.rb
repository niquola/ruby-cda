class Cda::SXCM_PPD_PQ < Cda::PPD_PQ
  attribute :operator, Cda::SetOperator, annotations: {:use=>:optional, :kind=>:attribute}
end
