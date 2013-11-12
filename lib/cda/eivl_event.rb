class Cda::EIVLEvent < Cda::CE
  attribute :code, Cda::TimingEvent, annotations: {:kind=>:attribute, :class=>"Cda::TimingEvent"}
  attribute :code_system, Cda::Uid, annotations: {:kind=>:attribute, :class=>"Cda::Uid"}
  attribute :code_system_name, Cda::St, annotations: {:kind=>:attribute, :class=>"Cda::St"}
end
