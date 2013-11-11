class Cda::REAL < Cda::QTY
  attribute :value, Cda::Real, annotations: {:kind=>:attribute, :class=>"Cda::Real"}
  attribute :_text, String, annotations: {:kind=>:attribute, :class=>"String"}
end
