class Cda::SLIST_PQ < Cda::ANY
  attribute :origin, Cda::PQ, annotations: {:class=>"Cda::PQ"}
  attribute :scale, Cda::PQ, annotations: {:class=>"Cda::PQ"}
  attribute :digits, Cda::List_int, annotations: {:class=>"Cda::List_int"}
end
