class Cda::CS < Cda::CV
  attribute :code, String, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :code_system, String, annotations: {:use=>:prohibited, :kind=>:attribute}
  attribute :code_system_name, Cda::St, annotations: {:use=>:prohibited, :kind=>:attribute}
  attribute :code_system_version, Cda::St, annotations: {:use=>:prohibited, :kind=>:attribute}
  attribute :display_name, Cda::St, annotations: {:use=>:prohibited, :kind=>:attribute}
end
