class Cda::GLIST_PQ < Cda::ANY
  attribute :head, Cda::PQ, annotations: {:class=>"Cda::PQ"}
  attribute :increment, Cda::PQ, annotations: {:class=>"Cda::PQ"}
  attribute :period, Integer, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Integer"}
  attribute :denominator, Integer, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Integer"}
end
