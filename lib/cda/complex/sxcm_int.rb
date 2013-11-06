class Cda::SXCM_INT < Cda::INT
  include Virtus.model
  attribute :operator, Cda::SetOperator, annotations: {:kind=>:attribute}
end
