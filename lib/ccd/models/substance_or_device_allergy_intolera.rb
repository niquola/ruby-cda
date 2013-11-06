module Ccd
  class SubstanceOrDeviceAllergyIntolera < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:16303).
    constraint 'classCode', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:16304).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:16305) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.24.3.90" (CONF:16306).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.24.3.90'

    #SHALL contain at least one [1..*] id (CONF:16307).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] code (CONF:16345).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="ASSERTION" Assertion (CodeSystem: ActCode 2.16.840.1.113883.5.4 STATIC) (CONF:16346).
    constraint 'code.code', cardinality: '1..1', value: 'ASSERTION'

    #SHALL contain exactly one [1..1] statusCode (CONF:16308).
    constraint 'statusCode', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14) (CONF:26354).
    constraint 'statusCode.code', cardinality: '1..1', value: 'completed'

    #SHALL contain exactly one [1..1] effectiveTime (CONF:16309).
    constraint 'effectiveTime', cardinality: '1..1'

    #SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:16312).
    constraint 'value', cardinality: '1..1'

    #This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Allergy/Adverse Event Type 2.16.840.1.113883.3.88.12.3221.6.2 DYNAMIC (CONF:16317).
    constraint 'value.code', cardinality: '1..1'

    #SHOULD contain zero or more [0..*] participant (CONF:16318).
    constraint 'participant', cardinality: '0..*'

    #The participant, if present, SHALL contain exactly one [1..1] @typeCode="CSM" Consumable (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:16319).
    constraint 'participant.typeCode', cardinality: '1..1', value: 'CSM'

    #The participant, if present, SHALL contain exactly one [1..1] participantRole (CONF:16320).
    constraint 'participant.participantRole', cardinality: '1..1'

    #This participantRole SHALL contain exactly one [1..1] @classCode="MANU" Manufactured Product (CodeSystem: RoleClass 2.16.840.1.113883.5.110 STATIC) (CONF:16321).
    constraint 'participant.participantRole.classCode', cardinality: '1..1', value: 'MANU'

    #This participantRole SHALL contain exactly one [1..1] playingEntity (CONF:16322).
    constraint 'participant.participantRole.playingEntity', cardinality: '1..1'

    #This playingEntity SHALL contain exactly one [1..1] @classCode="MMAT" Manufactured Material (CodeSystem: EntityClass 2.16.840.1.113883.5.41 STATIC) (CONF:16323).
    constraint 'participant.participantRole.playingEntity.classCode', cardinality: '1..1', value: 'MMAT'

    #This playingEntity SHALL contain exactly one [1..1] code (CONF:16324).
    constraint 'participant.participantRole.playingEntity.code', cardinality: '1..1'

    #This code SHOULD contain zero or one [0..1] originalText (CONF:16326).
    constraint 'participant.participantRole.playingEntity.code.originalText', cardinality: '0..1'

    #The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:16327).
    constraint 'participant.participantRole.playingEntity.code.originalText.reference', cardinality: '0..1'

    #The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:16328).
    constraint 'participant.participantRole.playingEntity.code.originalText.reference.value', cardinality: '0..1'

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'participant.participantRole.playingEntity.code.originalText.reference.value'

    #This code MAY contain zero or more [0..*] translation (CONF:16330).
    constraint 'participant.participantRole.playingEntity.code.translation', cardinality: '0..*'

    #	In an allergy to a specific medication the code SHALL be selected from the ValueSet 2.16.840.1.113883.3.88.12.80.16 Medication Brand Name DYNAMIC or the ValueSet 2.16.840.1.113883.3.88.12.80.17 Medication Clinical Drug DYNAMIC
    constraint 'participant.participantRole.playingEntity.code'

    #	In an allergy to a class of medications the code SHALL be selected from the ValueSet 2.16.840.1.113883.3.88.12.80.18 Medication Drug Class DYNAMIC
    constraint 'participant.participantRole.playingEntity.code'

    #	In an allergy to a food or other substance the code SHALL be selected from the ValueSet 2.16.840.1.113883.3.88.12.80.20 Ingredient Name DYNAMIC
    constraint 'participant.participantRole.playingEntity.code'

    #MAY contain zero or one [0..1] entryRelationship (CONF:16333) such that it
    constraint 'entryRelationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="SUBJ" Has subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:16335).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'SUBJ'

    #SHALL contain exactly one [1..1] @inversionInd="true" True (CONF:16334).
    constraint 'entryRelationship.inversionInd', cardinality: '1..1', value: 'true'

    #SHALL contain exactly one [1..1] Allergy Status Observation (templateId:2.16.840.1.113883.10.20.22.4.28) (CONF:16336).
    constraint 'entryRelationship.observation', cardinality: '1..1'

    #SHOULD contain zero or more [0..*] entryRelationship (CONF:16337) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="MFST" Is Manifestation of (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:16339).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'MFST'

    #SHALL contain exactly one [1..1] @inversionInd="true" True (CONF:16338).
    constraint 'entryRelationship.inversionInd', cardinality: '1..1', value: 'true'

    #SHALL contain exactly one [1..1] Reaction Observation (templateId:2.16.840.1.113883.10.20.22.4.9) (CONF:16340).
    constraint 'entryRelationship.observation', cardinality: '1..1'

    #MAY contain zero or one [0..1] entryRelationship (CONF:16341) such that it
    constraint 'entryRelationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="SUBJ" Has Subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:16342).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'SUBJ'

    #SHALL contain exactly one [1..1] @inversionInd="true" True (CONF:16343).
    constraint 'entryRelationship.inversionInd', cardinality: '1..1', value: 'true'

    #SHALL contain exactly one [1..1] Severity Observation (templateId:2.16.840.1.113883.10.20.22.4.8) (CONF:16344).
    constraint 'entryRelationship.observation', cardinality: '1..1'

    Ccd.load_extension('substance_or_device_allergy_intolera.rb')
  end
end
