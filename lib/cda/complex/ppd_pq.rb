class Cda::PPD_PQ < Cda::PQ
  attribute :distribution_type, Cda::ProbabilityDistributionType, annotations: {:kind=>:attribute}
  attribute :standard_deviation, Cda::PQ
end
