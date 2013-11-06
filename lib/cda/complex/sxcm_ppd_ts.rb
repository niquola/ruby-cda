class Cda::SXCM_PPD_TS < Cda::PPD_TS
  include Virtus.model
  attribute :operator, Cda::SetOperator, annotations: {:kind=>:attribute}
end
