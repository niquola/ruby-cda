class Cda::TEL < Cda::URL
  attribute :useable_period, Array[Cda::SXCM_TS], annotations: {:multiple=>true, :class=>"Cda::SXCM_TS"}
  attribute :use, Cda::Set_TelecommunicationAddressUse, annotations: {:kind=>:attribute, :class=>"Cda::Set_TelecommunicationAddressUse"}
end
