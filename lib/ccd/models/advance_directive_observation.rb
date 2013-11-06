module Ccd
  class AdvanceDirectiveObservation < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8648).
    constraint 'classCode', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:8649).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:8655) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.48" (CONF:10485).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.48'

    #SHALL contain at least one [1..*] id (CONF:8654).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet AdvanceDirectiveTypeCode 2.16.840.1.113883.1.11.20.2 STATIC 2006-10-17 (CONF:8651).
    constraint 'code', cardinality: '1..1'

    #SHALL contain exactly one [1..1] statusCode (CONF:8652).
    constraint 'statusCode', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19082).
    constraint 'statusCode.code', cardinality: '1..1', value: 'completed'

    #SHALL contain exactly one [1..1] effectiveTime (CONF:8656).
    constraint 'effectiveTime', cardinality: '1..1'

    #This effectiveTime SHALL contain exactly one [1..1] high (CONF:15521).
    constraint 'effectiveTime.high', cardinality: '1..1'

    #SHOULD contain zero or more [0..*] participant (CONF:8662) such that it
    constraint 'participant', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="VRF" Verifier (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:8663).
    constraint 'participant.typeCode', cardinality: '1..1', value: 'VRF'

    #SHALL contain exactly one [1..1] templateId (CONF:8664).
    constraint 'participant.templateId', cardinality: '1..1'

    #This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.1.58" (CONF:10486).
    constraint 'participant.templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.1.58'

    #SHOULD contain zero or one [0..1] time (CONF:8665).
    constraint 'participant.time', cardinality: '0..1'

    #The data type of Observation/participant/time in a verification SHALL be TS (time stamp).
    constraint 'participant.time'

    #SHALL contain exactly one [1..1] participantRole (CONF:8825).
    constraint 'participant.participantRole', cardinality: '1..1'

    #SHOULD contain zero or one [0..1] participant (CONF:8667) such that it
    constraint 'participant', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="CST" Custodian (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:8668).
    constraint 'participant.typeCode', cardinality: '1..1', value: 'CST'

    #SHALL contain exactly one [1..1] participantRole (CONF:8669).
    constraint 'participant.participantRole', cardinality: '1..1'

    #This participantRole SHALL contain exactly one [1..1] @classCode="AGNT" Agent (CodeSystem: RoleClass 2.16.840.1.113883.5.110 STATIC) (CONF:8670).
    constraint 'participant.participantRole.classCode', cardinality: '1..1', value: 'AGNT'

    #This participantRole SHOULD contain zero or one [0..1] addr (CONF:8671).
    constraint 'participant.participantRole.addr', cardinality: '0..1'

    #This participantRole SHOULD contain zero or one [0..1] telecom (CONF:8672).
    constraint 'participant.participantRole.telecom', cardinality: '0..1'

    #This participantRole SHALL contain exactly one [1..1] playingEntity (CONF:8824).
    constraint 'participant.participantRole.playingEntity', cardinality: '1..1'

    #This playingEntity SHALL contain exactly one [1..1] name (CONF:8673).
    constraint 'participant.participantRole.playingEntity.name', cardinality: '1..1'

    #The name of the agent who can provide a copy of the Advance Directive SHALL be recorded in the  name element inside the  playingEntity  element.
    constraint 'participant.participantRole.playingEntity.name'

    #SHOULD contain zero or more [0..*] reference (CONF:8692) such that it
    constraint 'reference', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="REFR" Refers to (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8694).
    constraint 'reference.typeCode', cardinality: '1..1', value: 'REFR'

    #SHALL contain exactly one [1..1] externalDocument (CONF:8693).
    constraint 'reference.externalDocument', cardinality: '1..1'

    #This externalDocument SHALL contain at least one [1..*] id (CONF:8695).
    constraint 'reference.externalDocument.id', cardinality: '1..*'

    #This externalDocument MAY contain zero or one [0..1] text (CONF:8696).
    constraint 'reference.externalDocument.text', cardinality: '0..1'

    #The text, if present, MAY contain zero or one [0..1] @mediaType="text/plain" (CONF:8703).
    constraint 'reference.externalDocument.text.mediaType', cardinality: '0..1', value: 'text/plain'

    #The text, if present, MAY contain zero or one [0..1] reference (CONF:8697).
    constraint 'reference.externalDocument.text.reference', cardinality: '0..1'

    #The URL of a referenced advance directive document MAY be present, and SHALL be represented in Observation/reference/ExternalDocument/text/reference.
    constraint 'reference.externalDocument.text.reference'

    #If a URL is referenced, then it SHOULD have a corresponding linkHTML element in narrative block.
    constraint 'reference.externalDocument.text.reference'

    Ccd.load_extension('advance_directive_observation.rb')
  end
end
