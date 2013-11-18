class Cda::BXIT_IVL_PQ < Cda::IVL_PQ
  attribute :qty, Integer, annotations: {:use=>:optional, :kind=>:attribute}
end
