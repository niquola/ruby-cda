class Cda::TS < Cda::QTY
  include Virtus.model
  attribute :value, Cda::Ts, annotations: {:kind=>:attribute}
end
