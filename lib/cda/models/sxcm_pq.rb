class Cda::SXCM_PQ < Cda::PQ
  attribute :operator, Cda::SetOperator, annotations: {:use=>:optional, :kind=>:attribute}
end
