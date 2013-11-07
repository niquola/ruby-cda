class Cda::RTO_QTY_QTY < Cda::QTY
  attribute :denominator, Cda::QTY, annotations: {:class=>"Cda::QTY"}
  attribute :numerator, Cda::QTY, annotations: {:class=>"Cda::QTY"}
end
