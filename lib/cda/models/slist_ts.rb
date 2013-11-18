class Cda::SLIST_TS < Cda::ANY
  attribute :origin, Cda::TS
  attribute :scale, Cda::PQ
  attribute :digits, Cda::List_int
end
