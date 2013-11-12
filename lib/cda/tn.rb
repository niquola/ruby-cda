class Cda::TN < Cda::EN
  attribute :valid_time, Cda::IVL_TS, annotations: {:class=>"Cda::IVL_TS"}
end
