class Cda::SXCM_MO < Cda::MO
  attribute :operator, Cda::SetOperator, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::SetOperator"}
end
