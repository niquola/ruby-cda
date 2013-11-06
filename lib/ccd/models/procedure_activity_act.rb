module Ccd
  class ProcedureActivityAct < ::Cda::Act
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8289).
    constraint 'classCode', cardinality: '1..1', value: 'ACT'

    #SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet MoodCodeEvnInt 2.16.840.1.113883.11.20.9.18 STATIC 2011-04-03 (CONF:8290).
    constraint 'moodCode', cardinality: '1..1'

    #SHALL contain exactly one [1..1] templateId (CONF:8291) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.12" (CONF:10519).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.12'

    #SHALL contain at least one [1..*] id (CONF:8292).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] code (CONF:8293).
    constraint 'code', cardinality: '1..1'

    #This code SHOULD contain zero or one [0..1] originalText (CONF:19186).
    constraint 'code.originalText', cardinality: '0..1'

    #The originalText, if present, MAY contain zero or one [0..1] reference (CONF:19187).
    constraint 'code.originalText.reference', cardinality: '0..1'

    #The reference, if present, MAY contain zero or one [0..1] @value (CONF:19188).
    constraint 'code.originalText.reference.value', cardinality: '0..1'

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'code.originalText.reference.value'

    #This code in a procedure activity act SHOULD be selected from LOINC (CodeSystem: 2.16.840.1.113883.6.1) or SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96).
    constraint 'code'

    #SHALL contain exactly one [1..1] statusCode, which SHALL be selected from ValueSet ProcedureAct statusCode 2.16.840.1.113883.11.20.9.22 DYNAMIC (CONF:8298).
    constraint 'statusCode', cardinality: '1..1'

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:8299).
    constraint 'effectiveTime', cardinality: '0..1'

    #MAY contain zero or one [0..1] priorityCode, which SHALL be selected from ValueSet Act Priority 2.16.840.1.113883.1.11.16866 DYNAMIC (CONF:8300).
    constraint 'priorityCode', cardinality: '0..1'

    #SHOULD contain zero or more [0..*] performer (CONF:8301).
    constraint 'performer', cardinality: '0..*'

    #The performer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:8302).
    constraint 'performer.assignedEntity', cardinality: '1..1'

    #This assignedEntity SHALL contain at least one [1..*] id (CONF:8303).
    constraint 'performer.assignedEntity.id', cardinality: '1..*'

    #This assignedEntity SHALL contain exactly one [1..1] addr (CONF:8304).
    constraint 'performer.assignedEntity.addr', cardinality: '1..1'

    #This assignedEntity SHALL contain exactly one [1..1] telecom (CONF:8305).
    constraint 'performer.assignedEntity.telecom', cardinality: '1..1'

    #This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:8306).
    constraint 'performer.assignedEntity.representedOrganization', cardinality: '0..1'

    #The representedOrganization, if present, SHOULD contain zero or more [0..*] id (CONF:8307).
    constraint 'performer.assignedEntity.representedOrganization.id', cardinality: '0..*'

    #The representedOrganization, if present, MAY contain zero or more [0..*] name (CONF:8308).
    constraint 'performer.assignedEntity.representedOrganization.name', cardinality: '0..*'

    #The representedOrganization, if present, SHALL contain exactly one [1..1] telecom (CONF:8310).
    constraint 'performer.assignedEntity.representedOrganization.telecom', cardinality: '1..1'

    #The representedOrganization, if present, SHALL contain exactly one [1..1] addr (CONF:8309).
    constraint 'performer.assignedEntity.representedOrganization.addr', cardinality: '1..1'

    #MAY contain zero or more [0..*] participant (CONF:8311).
    constraint 'participant', cardinality: '0..*'

    #The participant, if present, SHALL contain exactly one [1..1] @typeCode="LOC" Location (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8312).
    constraint 'participant.typeCode', cardinality: '1..1', value: 'LOC'

    #The participant, if present, SHALL contain exactly one [1..1] Service Delivery Location (templateId:2.16.840.1.113883.10.20.22.4.32) (CONF:15599).
    constraint 'participant.participantRole', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:8314) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="COMP" Has Component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8315).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'COMP'

    #SHALL contain exactly one [1..1] @inversionInd="true" true (CONF:8316).
    constraint 'entryRelationship.inversionInd', cardinality: '1..1', value: 'true'

    #SHALL contain exactly one [1..1] encounter (CONF:8317).
    constraint 'entryRelationship.encounter', cardinality: '1..1'

    #This encounter SHALL contain exactly one [1..1] @classCode="ENC" Encounter (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8318).
    constraint 'entryRelationship.encounter.classCode', cardinality: '1..1', value: 'ENC'

    #This encounter SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:8319).
    constraint 'entryRelationship.encounter.moodCode', cardinality: '1..1', value: 'EVN'

    #This encounter SHALL contain exactly one [1..1] id (CONF:8320).
    constraint 'entryRelationship.encounter.id', cardinality: '1..1'

    #Set the encounter ID to the ID of an encounter in another section to signify they are the same encounter.
    constraint 'entryRelationship.encounter.id'

    #MAY contain zero or one [0..1] entryRelationship (CONF:8322) such that it
    constraint 'entryRelationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="SUBJ" Has Subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8323).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'SUBJ'

    #SHALL contain exactly one [1..1] @inversionInd="true" true (CONF:8324).
    constraint 'entryRelationship.inversionInd', cardinality: '1..1', value: 'true'

    #SHALL contain exactly one [1..1] Instructions (templateId:2.16.840.1.113883.10.20.22.4.20) (CONF:15600).
    constraint 'entryRelationship.act', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:8326) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="RSON" Has Reason (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8327).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'RSON'

    #SHALL contain exactly one [1..1] Indication (templateId:2.16.840.1.113883.10.20.22.4.19) (CONF:15601).
    constraint 'entryRelationship.observation', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:8329) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="COMP" Has Component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8330).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'COMP'

    #SHALL contain exactly one [1..1] Medication Activity (templateId:2.16.840.1.113883.10.20.22.4.16) (CONF:15602).
    constraint 'entryRelationship.substanceAdministration', cardinality: '1..1'

    Ccd.load_extension('ProcedureActivityAct')
  end
end
