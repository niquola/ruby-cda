class Cda::PPD_TS < Cda::TS
  attribute :standard_deviation, Cda::PQ
  attribute :distribution_type, Cda::ProbabilityDistributionType, annotations: {:use=>:optional, :kind=>:attribute}
end
