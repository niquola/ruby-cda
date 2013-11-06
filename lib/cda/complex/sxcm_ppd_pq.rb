class Cda::SXCM_PPD_PQ < Cda::PPD_PQ
  include Virtus.model
  attribute :operator, Cda::SetOperator, annotations: {:kind=>:attribute}
end
