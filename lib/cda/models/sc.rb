class Cda::SC < Cda::ST
  attribute :code, String, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :code_system, String, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :code_system_name, String, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :code_system_version, String, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :display_name, String, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :_text, String
end
