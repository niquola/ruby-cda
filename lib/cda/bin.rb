class Cda::Bin < String

end
class Cda::BIN < Cda::ANY
  attribute :representation, Cda::BinaryDataEncoding, annotations: {:kind=>:attribute, :class=>"Cda::BinaryDataEncoding"}
  attribute :_text, String, annotations: {:kind=>:attribute, :class=>"String"}
end
