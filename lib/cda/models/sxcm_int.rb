class Cda::SXCM_INT < Cda::INT
  attribute :operator, Cda::SetOperator, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::SetOperator"}
end
