class Cda::PPD_PQ < Cda::PQ
  attribute :standard_deviation, Cda::PQ
  attribute :distribution_type, Cda::ProbabilityDistributionType, annotations: {:use=>:optional, :kind=>:attribute}
end
