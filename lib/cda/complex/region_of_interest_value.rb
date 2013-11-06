class Cda::RegionOfInterestValue < Cda::INT
  include Virtus.model
  attribute :unsorted, String, annotations: {:kind=>:attribute}
end
