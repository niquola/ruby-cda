class Cda::SXCM_REAL < Cda::REAL
  include Virtus.model
  attribute :operator, Cda::SetOperator, annotations: {:kind=>:attribute}
end
