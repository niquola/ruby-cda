class Cda::Real < Float

end
class Cda::REAL < Cda::QTY
  attribute :value, Cda::Real, annotations: {:use=>:optional, :kind=>:attribute}
end
