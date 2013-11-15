class Cda::GLIST_TS < Cda::ANY
  attribute :head, Cda::TS, annotations: {:class=>"Cda::TS"}
  attribute :increment, Cda::PQ, annotations: {:class=>"Cda::PQ"}
  attribute :period, Integer, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Integer"}
  attribute :denominator, Integer, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Integer"}
end
