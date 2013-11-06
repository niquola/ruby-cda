class Cda::IVXB_INT < Cda::INT
  include Virtus.model
  attribute :inclusive, Cda::Bl, annotations: {:kind=>:attribute}
end
