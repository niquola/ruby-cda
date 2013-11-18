class Cda::SXCM_REAL < Cda::REAL
  attribute :operator, Cda::SetOperator, annotations: {:use=>:optional, :kind=>:attribute}
end
