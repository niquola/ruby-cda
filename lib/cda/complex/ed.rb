class Cda::ED < Cda::BIN
  attribute :compression, Cda::CompressionAlgorithm, annotations: {:kind=>:attribute, :class=>"Cda::CompressionAlgorithm"}
  attribute :integrity_check, Cda::Bin, annotations: {:kind=>:attribute, :class=>"Cda::Bin"}
  attribute :integrity_check_algorithm, Cda::IntegrityCheckAlgorithm, annotations: {:kind=>:attribute, :class=>"Cda::IntegrityCheckAlgorithm"}
  attribute :language, Cda::Cs, annotations: {:kind=>:attribute, :class=>"Cda::Cs"}
  attribute :media_type, Cda::Cs, annotations: {:kind=>:attribute, :class=>"Cda::Cs"}
  attribute :reference, Cda::TEL, annotations: {:class=>"Cda::TEL"}
  attribute :thumbnail, Cda::Thumbnail, annotations: {:class=>"Cda::Thumbnail"}
end
