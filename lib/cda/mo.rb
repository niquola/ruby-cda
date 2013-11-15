class Cda::MO < Cda::QTY
  attribute :value, Cda::Real, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Real"}
  attribute :currency, Cda::Cs, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Cs"}
end
