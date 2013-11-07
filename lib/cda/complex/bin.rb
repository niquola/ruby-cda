class Cda::BIN < Cda::ANY
  attribute :representation, Cda::BinaryDataEncoding, annotations: {:kind=>:attribute}
end
