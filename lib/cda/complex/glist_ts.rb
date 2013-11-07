class Cda::GLIST_TS < Cda::ANY
  attribute :denominator, Cda::Int, annotations: {:kind=>:attribute}
  attribute :head, Cda::TS
  attribute :increment, Cda::PQ
  attribute :period, Cda::Int, annotations: {:kind=>:attribute}
end
