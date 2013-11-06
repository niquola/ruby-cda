class Cda::RTO_QTY_QTY < Cda::QTY
  include Virtus.model
  attribute :denominator, Cda::QTY
  attribute :numerator, Cda::QTY
end
