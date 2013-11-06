class Cda::HXIT_CE < Cda::CE
  include Virtus.model
  attribute :valid_time, Cda::IVL_TS
end
