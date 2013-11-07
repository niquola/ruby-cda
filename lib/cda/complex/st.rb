class Cda::ST < Cda::ED
  attribute :compression, Cda::CompressionAlgorithm, annotations: {:kind=>:attribute}
  attribute :integrity_check, Cda::Bin, annotations: {:kind=>:attribute}
  attribute :integrity_check_algorithm, Cda::IntegrityCheckAlgorithm, annotations: {:kind=>:attribute}
  attribute :language, Cda::Cs, annotations: {:kind=>:attribute}
  attribute :media_type, Cda::Cs, annotations: {:kind=>:attribute}
  attribute :reference, Cda::TEL
  attribute :representation, Cda::BinaryDataEncoding, annotations: {:kind=>:attribute}
  attribute :thumbnail, Cda::ED
end
