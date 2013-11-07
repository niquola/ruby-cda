class Cda::SLIST_PQ < Cda::ANY
  attribute :digits, Cda::List_int, annotations: {:class=>"Cda::List_int"}
  attribute :origin, Cda::PQ, annotations: {:class=>"Cda::PQ"}
  attribute :scale, Cda::PQ, annotations: {:class=>"Cda::PQ"}
end
