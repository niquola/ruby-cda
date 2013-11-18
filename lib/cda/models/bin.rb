class Cda::Bin < String

end
class Cda::BIN < Cda::ANY
  attribute :representation, Cda::BinaryDataEncoding, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :_text, String
end
