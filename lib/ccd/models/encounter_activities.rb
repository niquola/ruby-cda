module Ccd
  class EncounterActivities < ::Cda::Encounter
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="ENC" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8710).
    constraint 'classCode', cardinality: '1..1', value: 'ENC'

    #SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:8711).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:8712) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.49" (CONF:10494).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.49'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.49" (CONF:26353).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.49'

    #SHALL contain at least one [1..*] id (CONF:8713).
    constraint 'id', cardinality: '1..*'

    #SHOULD contain zero or one [0..1] code, which SHOULD be selected from ValueSet EncounterTypeCode 2.16.840.1.113883.3.88.12.80.32 DYNAMIC (CONF:8714).
    constraint 'code', cardinality: '0..1'

    #The code, if present, SHOULD contain zero or one [0..1] originalText (CONF:8719).
    constraint 'code.originalText', cardinality: '0..1'

    #The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:15970).
    constraint 'code.originalText.reference', cardinality: '0..1'

    #The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:15971).
    constraint 'code.originalText.reference.value', cardinality: '0..1'

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'code.originalText.reference.value'

    #The originalText, if present, SHOULD contain zero or one [0..1] reference/@value (CONF:8720).
    constraint 'code.originalText.reference/value', cardinality: '0..1'

    #SHALL contain exactly one [1..1] effectiveTime (CONF:8715).
    constraint 'effectiveTime', cardinality: '1..1'

    #MAY contain zero or more [0..*] performer (CONF:8725).
    constraint 'performer', cardinality: '0..*'

    #The performer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:8726).
    constraint 'performer.assignedEntity', cardinality: '1..1'

    #This assignedEntity MAY contain zero or one [0..1] code (CONF:8727).
    constraint 'performer.assignedEntity.code', cardinality: '0..1'

    #MAY contain zero or more [0..*] participant (CONF:8738) such that it
    constraint 'participant', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="LOC" Location (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8740).
    constraint 'participant.typeCode', cardinality: '1..1', value: 'LOC'

    #SHALL contain exactly one [1..1] Service Delivery Location (templateId:2.16.840.1.113883.10.20.22.4.32) (CONF:14903).
    constraint 'participant.participantRole', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:8722) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="RSON" Has Reason (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8723).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'RSON'

    #SHALL contain exactly one [1..1] Indication (templateId:2.16.840.1.113883.10.20.22.4.19) (CONF:14899).
    constraint 'entryRelationship.observation', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:15492) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] Encounter Diagnosis (templateId:2.16.840.1.113883.10.20.22.4.80) (CONF:15973).
    constraint 'entryRelationship.act', cardinality: '1..1'

    #MAY contain zero or one [0..1] sdtc:dischargeDispositionCode, which SHALL be selected from ValueSet 2.16.840.1.113883.3.88.12.80.33 NUBC UB-04 FL17-Patient Status DYNAMIC or, if access to NUBC is unavailable, from CodeSystem 2.16.840.1.113883.12.112 HL7 Discharge Disposition. The prefix sdtc: SHALL be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the dischargeDispositionCode element
    constraint ''

    Ccd.load_extension('encounter_activities.rb')
  end
end
