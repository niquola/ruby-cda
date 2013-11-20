class Cda::REAL < Cda::QTY
  attribute :value, Float, annotations: {:use=>:optional, :kind=>:attribute}
end
