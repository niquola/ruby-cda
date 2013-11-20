class Cda::CS < Cda::CV
  attribute :code, String, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :code_system, String, annotations: {:use=>:prohibited, :kind=>:attribute}
  attribute :code_system_name, String, annotations: {:use=>:prohibited, :kind=>:attribute}
  attribute :code_system_version, String, annotations: {:use=>:prohibited, :kind=>:attribute}
  attribute :display_name, String, annotations: {:use=>:prohibited, :kind=>:attribute}
end
