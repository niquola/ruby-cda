class Cda::BIN < Cda::ANY
  include Virtus.model
  attribute :representation, Cda::BinaryDataEncoding, annotations: {:kind=>:attribute}
end
