class Cda::MO < Cda::QTY
  attribute :value, Cda::Real, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Real"}
  attribute :currency, String, annotations: {:use=>:optional, :kind=>:attribute, :class=>"String"}
end
