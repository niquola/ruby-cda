class Cda::TEL < Cda::URL
  attribute :useable_period, Array[Cda::SXCM_TS], annotations: {:multiple=>true}
  attribute :use, Cda::Set_TelecommunicationAddressUse, annotations: {:use=>:optional, :kind=>:attribute}
end
