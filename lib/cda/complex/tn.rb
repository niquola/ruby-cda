class Cda::TN < Cda::EN
  include Virtus.model
  attribute :valid_time, Cda::IVL_TS
end
