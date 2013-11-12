class Cda::GLIST_PQ < Cda::ANY
  attribute :head, Cda::PQ, annotations: {:class=>"Cda::PQ"}
  attribute :increment, Cda::PQ, annotations: {:class=>"Cda::PQ"}
  attribute :period, Cda::Int, annotations: {:kind=>:attribute, :class=>"Cda::Int"}
  attribute :denominator, Cda::Int, annotations: {:kind=>:attribute, :class=>"Cda::Int"}
end
