class Cda::RTO_MO_PQ < Cda::QTY
  attribute :numerator, Cda::MO, annotations: {:class=>"Cda::MO"}
  attribute :denominator, Cda::PQ, annotations: {:class=>"Cda::PQ"}
end
