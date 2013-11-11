module Ccd
  class DischargeSummary < ::Cda::ClinicalDocument
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8463) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.1.8" (CONF:10044).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.1.8"}

    #SHALL contain exactly one [1..1] code (CONF:17178).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet DischargeSummaryDocumentTypeCode 2.16.840.1.113883.11.20.4.1 DYNAMIC (CONF:17179).
    constraint 'code.code', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] participant (CONF:8467).
    constraint 'participant', {:cardinality=>"0..*"}

    #If present, the participant/associatedEntity element SHALL have an associatedPerson or scopingOrganization element.
    constraint 'participant', {}

    #	b.	When participant/@typeCode is IND, associatedEntity/@classCode SHALL be selected from ValueSet 2.16.840.1.113883.11.20.9.33 INDRoleclassCodes STATIC 2011-09-30
    constraint 'participant', {}

    #SHALL contain exactly one [1..1] componentOf (CONF:8471).
    constraint 'component_of', {:cardinality=>"1..1"}

    #This componentOf SHALL contain exactly one [1..1] encompassingEncounter (CONF:8472).
    constraint 'component_of.encompassing_encounter', {:cardinality=>"1..1"}

    #This encompassingEncounter SHALL contain exactly one [1..1] effectiveTime/low (CONF:8473).
    constraint 'component_of.encompassing_encounter.effective_time.low', {:cardinality=>"1..1"}

    #This encompassingEncounter SHALL contain exactly one [1..1] effectiveTime/high (CONF:8475).
    constraint 'component_of.encompassing_encounter.effective_time.high', {:cardinality=>"1..1"}

    #The dischargeDispositionCode SHALL be present where the value of code SHOULD be selected from ValueSet 2.16.840.1.113883.3.88.12.80.33 NUBC UB-04 FL17-Patient Status DYNAMIC (www.nubc.org)
    constraint 'component_of.encompassing_encounter', {}

    #The dischargeDispositionCode, @displayName, or NUBC UB-04 Print Name, SHALL be displayed when the document is rendered
    constraint 'component_of.encompassing_encounter', {}

    #The encounterParticipant elements MAY be present. If present, the encounterParticipant/assignedEntity element SHALL have at least one assignedPerson or representedOrganization element present.
    constraint 'component_of.encompassing_encounter', {}

    #The responsibleParty element MAY be present. If present, the responsibleParty/assignedEntity element SHALL have at least one assignedPerson or representedOrganization element present.
    constraint 'component_of.encompassing_encounter', {}

    #SHALL contain exactly one [1..1] component (CONF:9539).
    constraint 'component', {:cardinality=>"1..1"}

    #A Discharge Summary can have either a structuredBody or a nonXMLBody.
    constraint 'component', {}

    #A Discharge Summary can conform to CDA Level 1 (nonXMLBody), CDA Level 2 (structuredBody with sections that contain a narrative block), or CDA Level 3 (structuredBody containing sections that contain a narrative block and coded entries). In this template (templateId 2.16.840.1.113883.10.20.22.1.8), coded entries are optional.
    constraint 'component', {}

    #If structuredBody, the component/structuredBody SHALL conform to the section constraints below
    constraint 'component', {}

    #
    constraint 'component', {:cardinality=>"1..1"}

    #
    constraint 'component', {:cardinality=>"1..1"}

    #
    constraint 'component', {:cardinality=>"1..1"}

    #
    constraint 'component', {:cardinality=>"1..1"}

    #
    constraint 'component', {:cardinality=>"1..1"}

    #
    constraint 'component', {:cardinality=>"0..1"}

    #
    constraint 'component', {:cardinality=>"0..1"}

    #
    constraint 'component', {:cardinality=>"0..1"}

    #
    constraint 'component', {:cardinality=>"0..1"}

    #
    constraint 'component', {:cardinality=>"0..1"}

    #
    constraint 'component', {:cardinality=>"0..1"}

    #
    constraint 'component', {:cardinality=>"0..1"}

    #
    constraint 'component', {:cardinality=>"0..1"}

    #
    constraint 'component', {:cardinality=>"0..1"}

    #
    constraint 'component', {:cardinality=>"0..1"}

    #
    constraint 'component', {:cardinality=>"0..1"}

    #
    constraint 'component', {:cardinality=>"0..1"}

    #
    constraint 'component', {:cardinality=>"0..1"}

    #
    constraint 'component', {:cardinality=>"0..1"}

    #
    constraint 'component', {:cardinality=>"0..1"}

    #
    constraint 'component', {:cardinality=>"0..1"}

    #
    constraint 'component', {:cardinality=>"0..1"}

    #
    constraint 'component', {:cardinality=>"0..1"}

    #
    constraint 'component', {:cardinality=>"0..1"}

    #	SHALL NOT include a Chief Complaint and Reason for Visit Section with either a Chief Complaint Section or a Reason for Visit Section
    constraint 'component', {}

    #
    constraint 'component', {:cardinality=>"0..1"}

    Ccd.load_extension('discharge_summary.rb')
  end
end
