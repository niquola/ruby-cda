class Cda::SXCM_TS < Cda::TS
  attribute :operator, Cda::SetOperator, annotations: {:use=>:optional, :kind=>:attribute}
end
