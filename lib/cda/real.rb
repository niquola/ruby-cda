class Cda::Real < Float

end
class Cda::REAL < Cda::QTY
  attribute :value, Cda::Real, annotations: {:kind=>:attribute, :class=>"Cda::Real"}
end
