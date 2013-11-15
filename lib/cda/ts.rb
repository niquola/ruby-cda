class Cda::Ts < String

end
class Cda::TS < Cda::QTY
  attribute :value, Cda::Ts, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Ts"}
end
