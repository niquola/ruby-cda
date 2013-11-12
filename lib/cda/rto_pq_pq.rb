class Cda::RTO_PQ_PQ < Cda::QTY
  attribute :numerator, Cda::PQ, annotations: {:class=>"Cda::PQ"}
  attribute :denominator, Cda::PQ, annotations: {:class=>"Cda::PQ"}
end
