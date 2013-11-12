class Cda::Component2 < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :non_xml_body, Cda::NonXMLBody, annotations: {:class=>"Cda::NonXMLBody"}
  attribute :structured_body, Cda::StructuredBody, annotations: {:class=>"Cda::StructuredBody"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :type_code, Cda::ActRelationshipHasComponent, annotations: {:kind=>:attribute, :class=>"Cda::ActRelationshipHasComponent"}
  attribute :context_conduction_ind, Cda::Bl, annotations: {:kind=>:attribute, :class=>"Cda::Bl"}
end
