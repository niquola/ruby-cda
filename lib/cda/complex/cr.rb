class Cda::CR < Cda::ANY
  attribute :name, Cda::CV, annotations: {:class=>"Cda::CV"}
  attribute :value, Cda::CD, annotations: {:class=>"Cda::CD"}
  attribute :inverted, Cda::Bn, annotations: {:kind=>:attribute, :class=>"Cda::Bn"}
end
