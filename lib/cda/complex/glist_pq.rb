class Cda::GLIST_PQ < Cda::ANY
  attribute :denominator, Cda::Int, annotations: {:kind=>:attribute}
  attribute :head, Cda::PQ
  attribute :increment, Cda::PQ
  attribute :period, Cda::Int, annotations: {:kind=>:attribute}
end
