class Cda::TEL < Cda::URL
  attribute :use, Cda::Set_TelecommunicationAddressUse, annotations: {:kind=>:attribute, :class=>"Cda::Set_TelecommunicationAddressUse"}
  attribute :useable_period, Array[Cda::SXCM_TS], annotations: {:multiple=>true, :class=>"Cda::SXCM_TS"}
end
