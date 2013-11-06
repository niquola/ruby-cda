class Cda::HXIT_PQ < Cda::PQ
  include Virtus.model
  attribute :valid_time, Cda::IVL_TS
end
