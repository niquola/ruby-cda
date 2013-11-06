class Cda::SLIST_PQ < Cda::ANY
  include Virtus.model
  attribute :digits, Cda::List_int
  attribute :origin, Cda::PQ
  attribute :scale, Cda::PQ
end
