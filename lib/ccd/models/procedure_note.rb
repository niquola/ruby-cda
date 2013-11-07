module Ccd
  class ProcedureNote < ::Cda::ClinicalDocument
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8496) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.1.6" (CONF:10050).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.1.6'

    #SHALL contain exactly one [1..1] code (CONF:17182).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ProcedureNoteDocumentTypeCodes 2.16.840.1.113883.11.20.6.1 DYNAMIC (CONF:17183).
    constraint 'code.code', cardinality: '1..1'

    #MAY contain zero or more [0..*] participant (CONF:8504) such that it
    constraint 'participant', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="IND" Individual (CodeSystem: participationFunction 2.16.840.1.113883.5.88 STATIC) (CONF:8505).
    constraint 'participant.type_code', cardinality: '1..1', value: 'IND'

    #SHALL contain exactly one [1..1] functionCode="PCP" Primary Care Physician (CodeSystem: participationFunction 2.16.840.1.113883.5.88 STATIC) (CONF:8506).
    constraint 'participant.function_code', cardinality: '1..1', value: 'PCP'

    #SHALL contain exactly one [1..1] associatedEntity/@classCode="PROV" Provider (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:8507).
    constraint 'participant.associated_entity/class_code', cardinality: '1..1', value: 'PROV'

    #This associatedEntity/@classCode SHALL contain exactly one [1..1] associatedPerson (CONF:8508).
    constraint 'participant.associated_entity/class_code.associated_person', cardinality: '1..1'

    #SHALL contain at least one [1..*] documentationOf (CONF:8510) such that it
    constraint 'documentation_of', cardinality: '1..*'

    #SHALL contain exactly one [1..1] serviceEvent (CONF:10061).
    constraint 'documentation_of.service_event', cardinality: '1..1'

    #This serviceEvent SHALL contain exactly one [1..1] effectiveTime (CONF:10062).
    constraint 'documentation_of.service_event.effective_time', cardinality: '1..1'

    #This effectiveTime SHALL contain exactly one [1..1] low (CONF:26449).
    constraint 'documentation_of.service_event.effective_time.low', cardinality: '1..1'

    #	The serviceEvent/effectiveTime SHALL be present with effectiveTime/low
    constraint 'documentation_of.service_event.effective_time'

    #	If a width is not present, the serviceEvent/effectiveTime SHALL include effectiveTime/high
    constraint 'documentation_of.service_event.effective_time'

    #	When only the date and the length of the procedure are known a width element SHALL be present and the serviceEvent/effectiveTime/high SHALL not be present
    constraint 'documentation_of.service_event.effective_time'

    #The content of effectiveTime SHALL be a conformant US Realm Date and Time (DT.US.FIELDED) (2.16.840.1.113883.10.20.22.5.4)
    constraint 'documentation_of.service_event.effective_time'

    #This serviceEvent SHALL contain exactly one [1..1] performer (CONF:8520).
    constraint 'documentation_of.service_event.performer', cardinality: '1..1'

    #This performer SHALL contain exactly one [1..1] @typeCode="PPRF" Primary Performer (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:8521).
    constraint 'documentation_of.service_event.performer.type_code', cardinality: '1..1', value: 'PPRF'

    #This performer SHALL contain exactly one [1..1] assignedEntity (CONF:14911).
    constraint 'documentation_of.service_event.performer.assigned_entity', cardinality: '1..1'

    #This assignedEntity SHOULD contain zero or one [0..1] code (CONF:14912).
    constraint 'documentation_of.service_event.performer.assigned_entity.code', cardinality: '0..1'

    #The code, if present, SHOULD contain zero or one [0..1] @code, which SHALL be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) 2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:14913).
    constraint 'documentation_of.service_event.performer.assigned_entity.code.code', cardinality: '0..1'

    #The value of Clinical Document /documentationOf/serviceEvent/code SHALL be from ICD9 CM Procedures (codeSystem 2.16.840.1.113883.6.104), CPT-4 (codeSystem 2.16.840.1.113883.6.12), or values descending from 71388002 (Procedure) from the SNOMED CT (codeSystem 2.16.840.1.113883.6.96) ValueSet 2.16.840.1.113883.3.88.12.80.28 Procedure DYNAMIC.
    constraint 'documentation_of.service_event'

    #Any assistants SHALL be identified and SHALL be identified as secondary performers (SPRF).
    constraint 'documentation_of'

    #SHALL contain exactly one [1..1] component (CONF:9588).
    constraint 'component', cardinality: '1..1'

    #A Procedure Note can have either a structuredBody or a nonXMLBody
    constraint 'component'

    #A Procedure Note can conform to CDA Level 1 (nonXMLBody), CDA Level 2 (structuredBody with sections that contain a narrative block), or CDA Level 3 (structuredBody containing sections that contain a narrative block and coded entries). In this template (templateId 2.16.840.1.113883.10.20.22.1.6), coded entries are optional.
    constraint 'component'

    #If structuredBody, the component/structuredBody SHALL conform to the section constraints below
    constraint 'component'

    #SHALL include an Assessment and Plan Section, or an Assessment Section and a Plan Section.
    constraint 'component'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

    #
    constraint 'component', cardinality: '0..1'

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

    #	Each section SHALL have a title and the title SHALL NOT be empty
    constraint 'component'

    #	SHALL NOT include an Assessment/Plan Section when an Assessment Section and a Plan of Care Section are present
    constraint 'component'

    #	SHALL NOT include a Chief Complaint and Reason for Visit Section with either a Chief Complaint Section or a Reason for Visit Section
    constraint 'component'

    #SHOULD contain zero or one [0..1] componentOf/encompassingEncounter (CONF:8499).
    constraint 'component_of/encompassing_encounter', cardinality: '0..1'

    #The componentOf/encompassingEncounter, if present, SHALL contain at least one [1..*] location/healthCareFacility/id (CONF:8500).
    constraint 'component_of/encompassing_encounter.location/health_care_facility/id', cardinality: '1..*'

    #The componentOf/encompassingEncounter, if present, SHALL contain exactly one [1..1] code (CONF:8501).
    constraint 'component_of/encompassing_encounter.code', cardinality: '1..1'

    #The componentOf/encompassingEncounter, if present, MAY contain zero or one [0..1] encounterParticipant (CONF:8502) such that it
    constraint 'component_of/encompassing_encounter.encounter_participant', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="REF" Referrer (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:8503).
    constraint 'component_of/encompassing_encounter.encounter_participant.type_code', cardinality: '1..1', value: 'REF'

    #A consent, if present, SHALL be represented as ClinicalDocument/authorization/consent.
    constraint ''

    Ccd.load_extension('procedure_note.rb')
  end
end
