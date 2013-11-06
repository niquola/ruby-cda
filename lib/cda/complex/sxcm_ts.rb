class Cda::SXCM_TS < Cda::TS
  include Virtus.model
  attribute :operator, Cda::SetOperator, annotations: {:kind=>:attribute}
end
