module Ccd
  class QuantityMeasurementObservation < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:9317).
    constraint 'classCode', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:9318).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:9319) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.6.2.14" (CONF:10532).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.6.2.14'

    #SHALL contain exactly one [1..1] code (CONF:9320).
    constraint 'code', cardinality: '1..1'

    #This code SHOULD contain zero or one [0..1] @code, which SHOULD be selected from ValueSet DIRQuantityMeasurementTypeCodes 2.16.840.1.113883.11.20.9.29 DYNAMIC (CONF:19210).
    constraint 'code.code', cardinality: '0..1'

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:9326).
    constraint 'effectiveTime', cardinality: '0..1'

    #SHALL contain exactly one [1..1] value with @xsi:type="PQ" (CONF:9324).
    constraint 'value', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:9327) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="SPRT" Has Support (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:9328).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'SPRT'

    #SHALL contain exactly one [1..1] SOP Instance Observation (templateId:2.16.840.1.113883.10.20.6.2.8) (CONF:15916).
    constraint 'entryRelationship.observation', cardinality: '1..1'
  end
end
