module Ccd
  class ProgressNote < ::Cda::ClinicalDocument
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7588) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.1.9" (CONF:10052).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.1.9"}

    #SHALL contain exactly one [1..1] code (CONF:17189).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ProgressNoteDocumentTypeCode 2.16.840.1.113883.11.20.8.1 DYNAMIC (CONF:17190).
    constraint 'code.code', {:cardinality=>"1..1"}

    #SHOULD contain zero or one [0..1] documentationOf (CONF:7603).
    constraint 'documentation_of', {:cardinality=>"0..1"}

    #The documentationOf, if present, SHALL contain exactly one [1..1] serviceEvent (CONF:7604).
    constraint 'documentation_of.service_event', {:cardinality=>"1..1"}

    #This serviceEvent SHALL contain exactly one [1..1] @classCode="PCPR" Care Provision (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:26420).
    constraint 'documentation_of.service_event.class_code', {:cardinality=>"1..1", :value=>"PCPR"}

    #This serviceEvent SHALL contain exactly one [1..1] templateId (CONF:9480) such that it
    constraint 'documentation_of.service_event.template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.21.3.1" (CONF:10068).
    constraint 'documentation_of.service_event.template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.21.3.1"}

    #This serviceEvent SHOULD contain zero or one [0..1] effectiveTime (CONF:9481).
    constraint 'documentation_of.service_event.effective_time', {:cardinality=>"0..1"}

    #	The serviceEvent/effectiveTime element SHOULD be present with effectiveTime/low element
    constraint 'documentation_of.service_event.effective_time', {}

    #	If a width element is not present, the serviceEvent SHALL include effectiveTime/high
    constraint 'documentation_of.service_event.effective_time', {}

    #The content of effectiveTime SHALL be a conformant US Realm Date and Time (DT.US.FIELDED) (2.16.840.1.113883.10.20.22.5.4)
    constraint 'documentation_of.service_event.effective_time', {}

    #SHALL contain exactly one [1..1] componentOf (CONF:7595).
    constraint 'component_of', {:cardinality=>"1..1"}

    #This componentOf SHALL contain exactly one [1..1] encompassingEncounter (CONF:7596).
    constraint 'component_of.encompassing_encounter', {:cardinality=>"1..1"}

    #This encompassingEncounter SHALL contain at least one [1..*] id (CONF:7597).
    constraint 'component_of.encompassing_encounter.id', {:cardinality=>"1..*"}

    #This encompassingEncounter SHALL contain exactly one [1..1] effectiveTime (CONF:7598).
    constraint 'component_of.encompassing_encounter.effective_time', {:cardinality=>"1..1"}

    #This effectiveTime SHALL contain exactly one [1..1] low (CONF:7599).
    constraint 'component_of.encompassing_encounter.effective_time.low', {:cardinality=>"1..1"}

    #The content of effectiveTime SHALL be a conformant US Realm Date and Time (DT.US.FIELDED) (2.16.840.1.113883.10.20.22.5.4)
    constraint 'component_of.encompassing_encounter.effective_time', {}

    #This encompassingEncounter SHALL contain exactly one [1..1] location/healthCareFacility/id (CONF:7611).
    constraint 'component_of.encompassing_encounter.location.health_care_facility.id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] component (CONF:9591).
    constraint 'component', {:cardinality=>"1..1"}

    #A Progress Note can have either a structuredBody or a nonXMLBody
    constraint 'component', {}

    #A Progress Note can conform to CDA Level 1 (nonXMLBody), CDA Level 2 (structuredBody with sections that contain a narrative block), or CDA Level 3 (structuredBody containing sections that contain a narrative block and coded entries). In this template (templateId 2.16.840.1.113883.10.20.22.1.9), coded entries are optional
    constraint 'component', {}

    #	If structuredBody, the component/structuredBody SHALL conform to the section constraints below
    constraint 'component', {}

    #SHALL include an Assessment and Plan Section, or an Assessment Section and a Plan Section.
    constraint 'component', {}

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

    #	SHALL NOT include an Assessment/Plan Section when an Assessment Section and a Plan of Care Section are present
    constraint 'component', {}

    #
    constraint 'component', {:cardinality=>"0..1"}

    #SHALL contain exactly one [1..1] code/@code, which SHALL be selected from ValueSet ProgressNoteDocumentTypeCode 2.16.840.1.113883.11.20.8.1 DYNAMIC (CONF:7589).
    constraint 'code.code', {:cardinality=>"1..1"}

    Ccd.load_extension('progress_note.rb')
  end
end
