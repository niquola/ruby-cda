class Cda::CV < Cda::ANY
  attribute :original_text, Cda::ED
  attribute :translation, Cda::CD
  attribute :code, String, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :code_system, Cda::Uid, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :code_system_name, Cda::St, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :code_system_version, Cda::St, annotations: {:use=>:optional, :kind=>:attribute}
  attribute :display_name, Cda::St, annotations: {:use=>:optional, :kind=>:attribute}
end
