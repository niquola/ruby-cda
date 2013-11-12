class Cda::PPD_TS < Cda::TS
  attribute :standard_deviation, Cda::PQ, annotations: {:class=>"Cda::PQ"}
  attribute :distribution_type, Cda::ProbabilityDistributionType, annotations: {:kind=>:attribute, :class=>"Cda::ProbabilityDistributionType"}
end
