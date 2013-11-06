class Cda::RTO_PQ_PQ < Cda::QTY
  include Virtus.model
  attribute :denominator, Cda::PQ
  attribute :numerator, Cda::PQ
end
