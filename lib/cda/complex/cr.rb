class Cda::CR < Cda::ANY
  attribute :inverted, Cda::Bn, annotations: {:kind=>:attribute, :class=>"Cda::Bn"}
  attribute :name, Cda::CV, annotations: {:class=>"Cda::CV"}
  attribute :value, Cda::CD, annotations: {:class=>"Cda::CD"}
end
