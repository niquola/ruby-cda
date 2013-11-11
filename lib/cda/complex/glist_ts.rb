class Cda::GLIST_TS < Cda::ANY
  attribute :head, Cda::TS, annotations: {:class=>"Cda::TS"}
  attribute :increment, Cda::PQ, annotations: {:class=>"Cda::PQ"}
  attribute :period, Cda::Int, annotations: {:kind=>:attribute, :class=>"Cda::Int"}
  attribute :denominator, Cda::Int, annotations: {:kind=>:attribute, :class=>"Cda::Int"}
end
