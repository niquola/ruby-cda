module Ccd
  class AllergyIntoleranceObservation < ::Cda::Observation
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7379).
    constraint 'class_code', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7380).
    constraint 'mood_code', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:7381) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.7" (CONF:10488).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.7'

    #SHALL contain at least one [1..*] id (CONF:7382).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] code (CONF:15947).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="ASSERTION" Assertion (CodeSystem: ActCode 2.16.840.1.113883.5.4 STATIC) (CONF:15948).
    constraint 'code.code', cardinality: '1..1', value: 'ASSERTION'

    #SHALL contain exactly one [1..1] statusCode (CONF:19084).
    constraint 'status_code', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19085).
    constraint 'status_code.code', cardinality: '1..1', value: 'completed'

    #SHALL contain exactly one [1..1] effectiveTime (CONF:7387).
    constraint 'effective_time', cardinality: '1..1'

    #	If it is unknown when the allergy began, this effectiveTime SHALL contain low/@nullFLavor="UNK"
    constraint 'effective_time'

    #	If the allergy is no longer a concern, this effectiveTime MAY contain zero or one [0..1] high
    constraint 'effective_time'

    #SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:7390).
    constraint 'value', cardinality: '1..1'

    #This value SHOULD contain zero or one [0..1] originalText (CONF:7422).
    constraint 'value.original_text', cardinality: '0..1'

    #The originalText, if present, MAY contain zero or one [0..1] reference (CONF:15949).
    constraint 'value.original_text.reference', cardinality: '0..1'

    #The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:15950).
    constraint 'value.original_text.reference.value', cardinality: '0..1'

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'value.original_text.reference.value'

    #This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Allergy/Adverse Event Type 2.16.840.1.113883.3.88.12.3221.6.2 DYNAMIC (CONF:9139).
    constraint 'value.code', cardinality: '1..1'

    #SHOULD contain zero or one [0..1] participant (CONF:7402) such that it
    constraint 'participant', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="CSM" Consumable (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:7403).
    constraint 'participant.type_code', cardinality: '1..1', value: 'CSM'

    #SHALL contain exactly one [1..1] participantRole (CONF:7404).
    constraint 'participant.participant_role', cardinality: '1..1'

    #This participantRole SHALL contain exactly one [1..1] @classCode="MANU" Manufactured Product (CodeSystem: RoleClass 2.16.840.1.113883.5.110 STATIC) (CONF:7405).
    constraint 'participant.participant_role.class_code', cardinality: '1..1', value: 'MANU'

    #This participantRole SHALL contain exactly one [1..1] playingEntity (CONF:7406).
    constraint 'participant.participant_role.playing_entity', cardinality: '1..1'

    #This playingEntity SHALL contain exactly one [1..1] @classCode="MMAT" Manufactured Material (CodeSystem: EntityClass 2.16.840.1.113883.5.41 STATIC) (CONF:7407).
    constraint 'participant.participant_role.playing_entity.class_code', cardinality: '1..1', value: 'MMAT'

    #This playingEntity SHALL contain exactly one [1..1] code (CONF:7419).
    constraint 'participant.participant_role.playing_entity.code', cardinality: '1..1'

    #This code SHOULD contain zero or one [0..1] originalText (CONF:7424).
    constraint 'participant.participant_role.playing_entity.code.original_text', cardinality: '0..1'

    #The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:7425).
    constraint 'participant.participant_role.playing_entity.code.original_text.reference', cardinality: '0..1'

    #The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:15952).
    constraint 'participant.participant_role.playing_entity.code.original_text.reference.value', cardinality: '0..1'

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'participant.participant_role.playing_entity.code.original_text.reference.value'

    #This code MAY contain zero or more [0..*] translation (CONF:7431).
    constraint 'participant.participant_role.playing_entity.code.translation', cardinality: '0..*'

    #	In an allergy to a specific medication the code SHALL be selected from the ValueSet 2.16.840.1.113883.3.88.12.80.16 Medication Brand Name DYNAMIC or the ValueSet 2.16.840.1.113883.3.88.12.80.17 Medication Clinical Drug DYNAMIC
    constraint 'participant.participant_role.playing_entity.code'

    #	In an allergy to a class of medications the code SHALL be selected from the ValueSet 2.16.840.1.113883.3.88.12.80.18 Medication Drug Class DYNAMIC
    constraint 'participant.participant_role.playing_entity.code'

    #	In an allergy to a food or other substance the code SHALL be selected from the ValueSet 2.16.840.1.113883.3.88.12.80.20 Ingredient Name DYNAMIC
    constraint 'participant.participant_role.playing_entity.code'

    #MAY contain zero or one [0..1] entryRelationship (CONF:7440) such that it
    constraint 'entry_relationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="SUBJ" Has subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7906).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'SUBJ'

    #SHALL contain exactly one [1..1] @inversionInd="true" True (CONF:7446).
    constraint 'entry_relationship.inversion_ind', cardinality: '1..1', value: 'true'

    #SHALL contain exactly one [1..1] Allergy Status Observation (templateId:2.16.840.1.113883.10.20.22.4.28) (CONF:15954).
    constraint 'entry_relationship.observation', cardinality: '1..1'

    #SHOULD contain zero or more [0..*] entryRelationship (CONF:7447) such that it
    constraint 'entry_relationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="MFST" Is Manifestation of (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7907).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'MFST'

    #SHALL contain exactly one [1..1] @inversionInd="true" True (CONF:7449).
    constraint 'entry_relationship.inversion_ind', cardinality: '1..1', value: 'true'

    #SHALL contain exactly one [1..1] Reaction Observation (templateId:2.16.840.1.113883.10.20.22.4.9) (CONF:15955).
    constraint 'entry_relationship.observation', cardinality: '1..1'

    #MAY contain zero or one [0..1] entryRelationship (CONF:9961) such that it
    constraint 'entry_relationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="SUBJ" Has Subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:9962).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'SUBJ'

    #SHALL contain exactly one [1..1] @inversionInd="true" True (CONF:9964).
    constraint 'entry_relationship.inversion_ind', cardinality: '1..1', value: 'true'

    #SHALL contain exactly one [1..1] Severity Observation (templateId:2.16.840.1.113883.10.20.22.4.8) (CONF:15956).
    constraint 'entry_relationship.observation', cardinality: '1..1'

    Ccd.load_extension('allergy_intolerance_observation.rb')
  end
end
