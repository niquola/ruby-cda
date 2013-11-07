class Cda::PPD_TS < Cda::TS
  attribute :distribution_type, Cda::ProbabilityDistributionType, annotations: {:kind=>:attribute}
  attribute :standard_deviation, Cda::PQ
end
