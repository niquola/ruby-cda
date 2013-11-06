class Cda::SXCM_MO < Cda::MO
  include Virtus.model
  attribute :operator, Cda::SetOperator, annotations: {:kind=>:attribute}
end
