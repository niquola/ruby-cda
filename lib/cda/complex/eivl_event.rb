class Cda::EIVLEvent < Cda::CE
  include Virtus.model
  attribute :code, Cda::TimingEvent, annotations: {:kind=>:attribute}
  attribute :code_system, Cda::Uid, annotations: {:kind=>:attribute}
  attribute :code_system_name, Cda::St, annotations: {:kind=>:attribute}
end