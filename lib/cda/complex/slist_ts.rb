class Cda::SLIST_TS < Cda::ANY
  attribute :digits, Cda::List_int
  attribute :origin, Cda::TS
  attribute :scale, Cda::PQ
end
