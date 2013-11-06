class Cda::EN < Cda::ANY
  include Virtus.model
  attribute :use, Cda::Set_EntityNameUse, annotations: {:kind=>:attribute}
  attribute :valid_time, Cda::IVL_TS
end
