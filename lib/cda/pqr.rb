class Cda::PQR < Cda::CV
  attribute :value, Cda::Real, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Real"}
end
