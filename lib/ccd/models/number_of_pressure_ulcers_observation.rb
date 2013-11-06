module Ccd
  class NumberOfPressureUlcersObservation < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:14705).
    constraint 'classCode', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:14706).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:14707) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.76" (CONF:14708).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.76'

    #SHALL contain at least one [1..*] id (CONF:14709).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] code (CONF:14767).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="2264892003" number of pressure ulcers (CONF:14768).
    constraint 'code.code', cardinality: '1..1', value: '2264892003'

    #SHALL contain exactly one [1..1] statusCode (CONF:14714).
    constraint 'statusCode', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19108).
    constraint 'statusCode.code', cardinality: '1..1', value: 'completed'

    #SHALL contain exactly one [1..1] effectiveTime (CONF:14715).
    constraint 'effectiveTime', cardinality: '1..1'

    #SHALL contain exactly one [1..1] value with @xsi:type="INT" (CONF:14771).
    constraint 'value', cardinality: '1..1'

    #MAY contain zero or one [0..1] author (CONF:14717).
    constraint 'author', cardinality: '0..1'

    #SHALL contain exactly one [1..1] entryRelationship (CONF:14718).
    constraint 'entryRelationship', cardinality: '1..1'

    #This entryRelationship SHALL contain exactly one [1..1] @typeCode="SUBJ" Has subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:14719).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'SUBJ'

    #This entryRelationship SHALL contain exactly one [1..1] observation (CONF:14720).
    constraint 'entryRelationship.observation', cardinality: '1..1'

    #This observation SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:14721).
    constraint 'entryRelationship.observation.classCode', cardinality: '1..1', value: 'OBS'

    #This observation SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:14722).
    constraint 'entryRelationship.observation.moodCode', cardinality: '1..1', value: 'EVN'

    #This observation SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHOULD be selected from ValueSet Pressure Ulcer Stage 2.16.840.1.113883.11.20.9.35 STATIC (CONF:14725).
    constraint 'entryRelationship.observation.value', cardinality: '1..1'

    Ccd.load_extension('NumberOfPressureUlcersObservation')
  end
end
