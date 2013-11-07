class Cda::PPD_TS < Cda::TS
  attribute :distribution_type, Cda::ProbabilityDistributionType, annotations: {:kind=>:attribute, :class=>"Cda::ProbabilityDistributionType"}
  attribute :standard_deviation, Cda::PQ, annotations: {:class=>"Cda::PQ"}
end
