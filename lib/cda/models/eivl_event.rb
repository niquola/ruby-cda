class Cda::EIVLEvent < Cda::CE
  attribute :code, Cda::TimingEvent, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :code_system, String, annotations: {:kind=>:attribute}
  attribute :code_system_name, String, annotations: {:kind=>:attribute}
end
