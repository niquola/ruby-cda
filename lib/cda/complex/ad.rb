class Cda::AD < Cda::ANY
  attribute :is_not_ordered, Cda::Bl, annotations: {:kind=>:attribute}
  attribute :use, Cda::Set_PostalAddressUse, annotations: {:kind=>:attribute}
  attribute :useable_period, Array[Cda::SXCM_TS], annotations: {:multiple=>true}
end
