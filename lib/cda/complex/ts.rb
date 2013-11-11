class Cda::TS < Cda::QTY
  attribute :value, Cda::Ts, annotations: {:kind=>:attribute, :class=>"Cda::Ts"}
  attribute :_text, String, annotations: {:kind=>:attribute, :class=>"String"}
end
