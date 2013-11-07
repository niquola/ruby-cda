module Ccd
  class UnstructuredDocument < ::Cda::ClinicalDocument
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7710) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.1.10" (CONF:10054).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.1.10'

    #SHALL contain exactly one [1..1] component/nonXMLBody (CONF:7620).
    constraint 'component/non_xml_body', cardinality: '1..1'

    #This component/nonXMLBody SHALL contain exactly one [1..1] text (CONF:7622).
    constraint 'component/non_xml_body.text', cardinality: '1..1'

    #The text element SHALL either contain a reference element with a value attribute, or have a representation attribute with the value of B64, a mediaType attribute, and contain the media content.
    constraint 'component/non_xml_body.text'

    #The value of @mediaType, if present, SHALL be drawn from the value set 2.16.840.1.113883.11.20.7.1 SupportedFileFormats STATIC 20100512.
    constraint 'component/non_xml_body.text'

    #SHALL contain exactly one [1..1] author/assignedAuthor (CONF:7640).
    constraint 'author/assigned_author', cardinality: '1..1'

    #This author/assignedAuthor SHALL contain exactly one [1..1] addr (CONF:7641).
    constraint 'author/assigned_author.addr', cardinality: '1..1'

    #This author/assignedAuthor SHALL contain exactly one [1..1] telecom (CONF:7642).
    constraint 'author/assigned_author.telecom', cardinality: '1..1'

    #SHALL contain exactly one [1..1] recordTarget/patientRole/id (CONF:7643).
    constraint 'record_target/patient_role/id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] custodian/assignedCustodian/representedCustodianOrganization (CONF:7645).
    constraint 'custodian/assigned_custodian/represented_custodian_organization', cardinality: '1..1'

    #This custodian/assignedCustodian/representedCustodianOrganization SHALL contain exactly one [1..1] id (CONF:7648).
    constraint 'custodian/assigned_custodian/represented_custodian_organization.id', cardinality: '1..1'

    #This custodian/assignedCustodian/representedCustodianOrganization SHALL contain exactly one [1..1] name (CONF:7649).
    constraint 'custodian/assigned_custodian/represented_custodian_organization.name', cardinality: '1..1'

    #This custodian/assignedCustodian/representedCustodianOrganization SHALL contain exactly one [1..1] telecom (CONF:7650).
    constraint 'custodian/assigned_custodian/represented_custodian_organization.telecom', cardinality: '1..1'

    #This custodian/assignedCustodian/representedCustodianOrganization SHALL contain exactly one [1..1] addr (CONF:7651).
    constraint 'custodian/assigned_custodian/represented_custodian_organization.addr', cardinality: '1..1'

    Ccd.load_extension('unstructured_document.rb')
  end
end
