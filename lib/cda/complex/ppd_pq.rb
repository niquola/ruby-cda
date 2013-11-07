class Cda::PPD_PQ < Cda::PQ
  attribute :distribution_type, Cda::ProbabilityDistributionType, annotations: {:kind=>:attribute, :class=>"Cda::ProbabilityDistributionType"}
  attribute :standard_deviation, Cda::PQ, annotations: {:class=>"Cda::PQ"}
end
