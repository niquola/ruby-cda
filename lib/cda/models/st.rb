class Cda::ST < Cda::ED
  attribute :reference, Cda::TEL
  attribute :thumbnail, Cda::ED
  attribute :representation, Cda::BinaryDataEncoding, annotations: {:kind=>:attribute}
  attribute :media_type, String, annotations: {:kind=>:attribute}
  attribute :language, String, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :compression, Cda::CompressionAlgorithm, annotations: {:use=>:prohibited, :kind=>:attribute}
  attribute :integrity_check, Cda::Bin, annotations: {:use=>:prohibited, :kind=>:attribute}
  attribute :integrity_check_algorithm, Cda::IntegrityCheckAlgorithm, annotations: {:use=>:prohibited, :kind=>:attribute}
  attribute :_text, String
end
