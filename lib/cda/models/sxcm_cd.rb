class Cda::SXCM_CD < Cda::CD
  attribute :operator, Cda::SetOperator, annotations: {:use=>:optional, :kind=>:attribute}
end
