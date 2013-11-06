class Cda::GLIST_PQ < Cda::ANY
  include Virtus.model
  attribute :denominator, Cda::Int, annotations: {:kind=>:attribute}
  attribute :head, Cda::PQ
  attribute :increment, Cda::PQ
  attribute :period, Cda::Int, annotations: {:kind=>:attribute}
end
