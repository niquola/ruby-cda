class Cda::GLIST_PQ < Cda::ANY
  attribute :head, Cda::PQ
  attribute :increment, Cda::PQ
  attribute :period, Integer, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :denominator, Integer, annotations: {:use=>:optional, :kind=>:attribute}
end
