class Cda::CV < Cda::CE
  attribute :original_text, Cda::ED
  attribute :translation, Cda::CD
  attribute :code, String, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :code_system, String, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :code_system_name, String, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :code_system_version, String, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :display_name, String, annotations: {:use=>:optional, :kind=>:attribute}
end
