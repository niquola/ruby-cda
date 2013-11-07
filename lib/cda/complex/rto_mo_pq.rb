class Cda::RTO_MO_PQ < Cda::QTY
  attribute :denominator, Cda::PQ, annotations: {:class=>"Cda::PQ"}
  attribute :numerator, Cda::MO, annotations: {:class=>"Cda::MO"}
end
