class Cda::BXIT_IVL_PQ < Cda::IVL_PQ
  include Virtus.model
  attribute :qty, Cda::Int, annotations: {:kind=>:attribute}
end
