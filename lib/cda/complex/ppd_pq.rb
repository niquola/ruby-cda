class Cda::PPD_PQ < Cda::PQ
  include Virtus.model
  attribute :distribution_type, Cda::ProbabilityDistributionType, annotations: {:kind=>:attribute}
  attribute :standard_deviation, Cda::PQ
end
