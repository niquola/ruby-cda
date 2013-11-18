class Cda::CS < Cda::CV
  attribute :code, String, annotations: {:use=>:optional, :kind=>:attribute, :class=>"String"}
  attribute :code_system, Cda::Uid, annotations: {:use=>:prohibited, :kind=>:attribute, :class=>"Cda::Uid"}
  attribute :code_system_name, Cda::St, annotations: {:use=>:prohibited, :kind=>:attribute, :class=>"Cda::St"}
  attribute :code_system_version, Cda::St, annotations: {:use=>:prohibited, :kind=>:attribute, :class=>"Cda::St"}
  attribute :display_name, Cda::St, annotations: {:use=>:prohibited, :kind=>:attribute, :class=>"Cda::St"}
end
