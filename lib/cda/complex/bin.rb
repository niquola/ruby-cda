class Cda::BIN < Cda::ANY
  attribute :representation, Cda::BinaryDataEncoding, annotations: {:kind=>:attribute, :class=>"Cda::BinaryDataEncoding"}
end
