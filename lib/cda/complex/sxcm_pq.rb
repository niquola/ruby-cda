class Cda::SXCM_PQ < Cda::PQ
  include Virtus.model
  attribute :operator, Cda::SetOperator, annotations: {:kind=>:attribute}
end
