class Cda::SXCM_CD < Cda::CD
  include Virtus.model
  attribute :operator, Cda::SetOperator, annotations: {:kind=>:attribute}
end
