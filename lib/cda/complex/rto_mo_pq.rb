class Cda::RTO_MO_PQ < Cda::QTY
  include Virtus.model
  attribute :denominator, Cda::PQ
  attribute :numerator, Cda::MO
end
