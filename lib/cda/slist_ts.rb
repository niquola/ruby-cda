class Cda::SLIST_TS < Cda::ANY
  attribute :origin, Cda::TS, annotations: {:class=>"Cda::TS"}
  attribute :scale, Cda::PQ, annotations: {:class=>"Cda::PQ"}
  attribute :digits, Cda::List_int, annotations: {:class=>"Cda::List_int"}
end
