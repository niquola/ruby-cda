module Ccd
  class OperativeNote < ::Cda::ClinicalDocument
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8483) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.1.7" (CONF:10048).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.1.7'

    #SHALL contain exactly one [1..1] code (CONF:17187).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet SurgicalOperationNoteDocumentTypeCode 2.16.840.1.113883.11.20.1.1 DYNAMIC (CONF:17188).
    constraint 'code.code', cardinality: '1..1'

    #SHALL contain at least one [1..*] documentationOf (CONF:8486).
    constraint 'documentation_of', cardinality: '1..*'

    #Such documentationOfs SHALL contain exactly one [1..1] serviceEvent (CONF:8493).
    constraint 'documentation_of.service_event', cardinality: '1..1'

    #This serviceEvent SHALL contain exactly one [1..1] effectiveTime (CONF:8494).
    constraint 'documentation_of.service_event.effective_time', cardinality: '1..1'

    #The serviceEvent/effectiveTime SHALL be present with effectiveTime/low.
    constraint 'documentation_of.service_event.effective_time'

    #If a width is not present, the serviceEvent/effectiveTime SHALL include effectiveTime/high
    constraint 'documentation_of.service_event.effective_time'

    #	When only the date and the length of the procedure are known a width element SHALL be present and the serviceEvent/effectiveTime/high SHALL not be present
    constraint 'documentation_of.service_event.effective_time'

    #The content of effectiveTime SHALL be a conformant US Realm Date and Time (DT.US.FIELDED) (2.16.840.1.113883.10.20.22.5.4)
    constraint 'documentation_of.service_event.effective_time'

    #This serviceEvent SHALL contain exactly one [1..1] performer (CONF:8489) such that it
    constraint 'documentation_of.service_event.performer', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @typeCode="PPRF" Primary performer (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:8495).
    constraint 'documentation_of.service_event.performer.type_code', cardinality: '1..1', value: 'PPRF'

    #SHALL contain exactly one [1..1] assignedEntity (CONF:10917).
    constraint 'documentation_of.service_event.performer.assigned_entity', cardinality: '1..1'

    #This assignedEntity SHALL contain exactly one [1..1] code (CONF:8490).
    constraint 'documentation_of.service_event.performer.assigned_entity.code', cardinality: '1..1'

    #This code SHOULD contain zero or one [0..1] @code, which SHOULD be selected from ValueSet Provider Role 2.16.840.1.113883.3.88.12.3221.4 DYNAMIC (CONF:8491).
    constraint 'documentation_of.service_event.performer.assigned_entity.code.code', cardinality: '0..1'

    #i.	The value of Clinical Document /documentationOf/serviceEvent/code SHALL be from ICD9 CM Procedures (CodeSystem 2.16.840.1.113883.6.104), CPT-4 (CodeSystem 2.16.840.1.113883.6.12), or values descending from 71388002 (Procedure) from the SNOMED CT (CodeSystem 2.16.840.1.113883.6.96) ValueSet Procedure 2.16.840.1.113883.3.88.12.80.28 DYNAMIC
    constraint 'documentation_of.service_event'

    #Any assistants SHALL be identified and SHALL be identified as secondary performers (SPRF).
    constraint 'documentation_of'

    #SHALL contain exactly one [1..1] component (CONF:9585).
    constraint 'component', cardinality: '1..1'

    #An Operative Note can have either a structuredBody or a nonXMLBody
    constraint 'component'

    #An Operative Note can conform to CDA Level 1 (nonXMLBody), CDA Level 2 (structuredBody with sections that contain a narrative block), or CDA Level 3 (structuredBody containing sections that contain a narrative block and coded entries). In this template (templateId 2.16.840.1.113883.10.20.22.1.7), coded entries are optional
    constraint 'component'

    #	If structuredBody, the component/structuredBody SHALL conform to the section constraints below
    constraint 'component'

    #
    constraint 'component', cardinality: '1..1'

    #
    constraint 'component', cardinality: '1..1'

    #
    constraint 'component', cardinality: '1..1'

    #
    constraint 'component', cardinality: '1..1'

    #
    constraint 'component', cardinality: '1..1'

    #
    constraint 'component', cardinality: '1..1'

    #
    constraint 'component', cardinality: '1..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '1..1'

    #A consent, if present, SHALL be represented as ClinicalDocument/authorization/consent.
    constraint ''

    Ccd.load_extension('operative_note.rb')
  end
end
