module Ccd
  class ProcedureActivityProcedure < ::Cda::Procedure
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="PROC" Procedure (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7652).
    constraint 'classCode', cardinality: '1..1', value: 'PROC'

    #SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet MoodCodeEvnInt 2.16.840.1.113883.11.20.9.18 STATIC 2011-04-03 (CONF:7653).
    constraint 'moodCode', cardinality: '1..1'

    #SHALL contain exactly one [1..1] templateId (CONF:7654) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.14" (CONF:10521).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.14'

    #SHALL contain at least one [1..*] id (CONF:7655).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] code (CONF:7656).
    constraint 'code', cardinality: '1..1'

    #This code SHOULD contain zero or one [0..1] originalText (CONF:19203).
    constraint 'code.originalText', cardinality: '0..1'

    #The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:19204).
    constraint 'code.originalText.reference', cardinality: '0..1'

    #The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:19205).
    constraint 'code.originalText.reference.value', cardinality: '0..1'

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1).
    constraint 'code.originalText.reference.value'

    #This code in a procedure activity SHOULD be selected from LOINC (codeSystem 2.16.840.1.113883.6.1) or SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96), and MAY be selected from CPT-4 (CodeSystem: 2.16.840.1.113883.6.12) or ICD10 PCS (CodeSystem: 2.16.840.1.113883.6.4).
    constraint 'code'

    #SHALL contain exactly one [1..1] statusCode, which SHALL be selected from ValueSet ProcedureAct statusCode 2.16.840.1.113883.11.20.9.22 DYNAMIC (CONF:7661).
    constraint 'statusCode', cardinality: '1..1'

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:7662).
    constraint 'effectiveTime', cardinality: '0..1'

    #MAY contain zero or one [0..1] priorityCode, which SHALL be selected from ValueSet Act Priority 2.16.840.1.113883.1.11.16866 DYNAMIC (CONF:7668).
    constraint 'priorityCode', cardinality: '0..1'

    #MAY contain zero or one [0..1] methodCode (CONF:7670).
    constraint 'methodCode', cardinality: '0..1'

    #methodCode SHALL NOT conflict with the method inherent in Procedure / code.
    constraint 'methodCode'

    #SHOULD contain zero or more [0..*] targetSiteCode (CONF:7683).
    constraint 'targetSiteCode', cardinality: '0..*'

    #The targetSiteCode, if present, SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Body Site 2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:16082).
    constraint 'targetSiteCode.code', cardinality: '1..1'

    #MAY contain zero or more [0..*] specimen (CONF:7697).
    constraint 'specimen', cardinality: '0..*'

    #The specimen, if present, SHALL contain exactly one [1..1] specimenRole (CONF:7704).
    constraint 'specimen.specimenRole', cardinality: '1..1'

    #This specimenRole SHOULD contain zero or more [0..*] id (CONF:7716).
    constraint 'specimen.specimenRole.id', cardinality: '0..*'

    #	If you want to indicate that the Procedure and the Results are referring to the same specimen, the Procedure/specimen/specimenRole/id SHOULD be set to equal an Organizer/specimen/ specimenRole/id
    constraint 'specimen.specimenRole.id'

    #This specimen is for representing specimens obtained from a procedure.
    constraint 'specimen'

    #SHOULD contain zero or more [0..*] performer (CONF:7718) such that it
    constraint 'performer', cardinality: '0..*'

    #SHALL contain exactly one [1..1] assignedEntity (CONF:7720).
    constraint 'performer.assignedEntity', cardinality: '1..1'

    #This assignedEntity SHALL contain at least one [1..*] id (CONF:7722).
    constraint 'performer.assignedEntity.id', cardinality: '1..*'

    #This assignedEntity SHALL contain exactly one [1..1] addr (CONF:7731).
    constraint 'performer.assignedEntity.addr', cardinality: '1..1'

    #This assignedEntity SHALL contain exactly one [1..1] telecom (CONF:7732).
    constraint 'performer.assignedEntity.telecom', cardinality: '1..1'

    #This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:7733).
    constraint 'performer.assignedEntity.representedOrganization', cardinality: '0..1'

    #The representedOrganization, if present, SHOULD contain zero or more [0..*] id (CONF:7734).
    constraint 'performer.assignedEntity.representedOrganization.id', cardinality: '0..*'

    #The representedOrganization, if present, MAY contain zero or more [0..*] name (CONF:7735).
    constraint 'performer.assignedEntity.representedOrganization.name', cardinality: '0..*'

    #The representedOrganization, if present, SHALL contain exactly one [1..1] telecom (CONF:7737).
    constraint 'performer.assignedEntity.representedOrganization.telecom', cardinality: '1..1'

    #The representedOrganization, if present, SHALL contain exactly one [1..1] addr (CONF:7736).
    constraint 'performer.assignedEntity.representedOrganization.addr', cardinality: '1..1'

    #MAY contain zero or more [0..*] participant (CONF:7751) such that it
    constraint 'participant', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="DEV" Device (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7752).
    constraint 'participant.typeCode', cardinality: '1..1', value: 'DEV'

    #SHALL contain exactly one [1..1] Product Instance (templateId:2.16.840.1.113883.10.20.22.4.37) (CONF:15911).
    constraint 'participant.participantRole', cardinality: '1..1'

    #MAY contain zero or more [0..*] participant (CONF:7765) such that it
    constraint 'participant', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="LOC" Location (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:7766).
    constraint 'participant.typeCode', cardinality: '1..1', value: 'LOC'

    #SHALL contain exactly one [1..1] Service Delivery Location (templateId:2.16.840.1.113883.10.20.22.4.32) (CONF:15912).
    constraint 'participant.participantRole', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:7768) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="COMP" Has Component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7769).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'COMP'

    #SHALL contain exactly one [1..1] @inversionInd="true" true (CONF:8009).
    constraint 'entryRelationship.inversionInd', cardinality: '1..1', value: 'true'

    #SHALL contain exactly one [1..1] encounter (CONF:7770).
    constraint 'entryRelationship.encounter', cardinality: '1..1'

    #This encounter SHALL contain exactly one [1..1] @classCode="ENC" Encounter (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7771).
    constraint 'entryRelationship.encounter.classCode', cardinality: '1..1', value: 'ENC'

    #This encounter SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7772).
    constraint 'entryRelationship.encounter.moodCode', cardinality: '1..1', value: 'EVN'

    #This encounter SHALL contain exactly one [1..1] id (CONF:7773).
    constraint 'entryRelationship.encounter.id', cardinality: '1..1'

    #Set the encounter ID to the ID of an encounter in another section to signify they are the same encounter.
    constraint 'entryRelationship.encounter.id'

    #MAY contain zero or one [0..1] entryRelationship (CONF:7775) such that it
    constraint 'entryRelationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="SUBJ" Has Subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7776).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'SUBJ'

    #SHALL contain exactly one [1..1] @inversionInd="true" true (CONF:7777).
    constraint 'entryRelationship.inversionInd', cardinality: '1..1', value: 'true'

    #SHALL contain exactly one [1..1] Instructions (templateId:2.16.840.1.113883.10.20.22.4.20) (CONF:15913).
    constraint 'entryRelationship.act', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:7779) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="RSON" Has Reason (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7780).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'RSON'

    #SHALL contain exactly one [1..1] Indication (templateId:2.16.840.1.113883.10.20.22.4.19) (CONF:15914).
    constraint 'entryRelationship.observation', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:7886) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="COMP" Has Component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7887).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'COMP'

    #SHALL contain exactly one [1..1] Medication Activity (templateId:2.16.840.1.113883.10.20.22.4.16) (CONF:15915).
    constraint 'entryRelationship.substanceAdministration', cardinality: '1..1'

    Ccd.load_extension('procedure_activity_procedure.rb')
  end
end
