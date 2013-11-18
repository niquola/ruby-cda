class Cda::EIVLEvent < Cda::CE
  attribute :code, Cda::TimingEvent, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :code_system, Cda::Uid, annotations: {:kind=>:attribute}
  attribute :code_system_name, Cda::St, annotations: {:kind=>:attribute}
end
