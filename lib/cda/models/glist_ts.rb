class Cda::GLIST_TS < Cda::ANY
  attribute :head, Cda::TS
  attribute :increment, Cda::PQ
  attribute :period, Integer, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :denominator, Integer, annotations: {:use=>:optional, :kind=>:attribute}
end
