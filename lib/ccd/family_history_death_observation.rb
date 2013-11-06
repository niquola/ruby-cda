module Ccd
  class FamilyHistoryDeathObservation < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8621).
    constraint 'classCode', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:8622).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:8623) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.47" (CONF:10495).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.47'

    #SHALL contain exactly one [1..1] code (CONF:19141).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="ASSERTION" Assertion (CONF:19142).
    constraint 'code.code', cardinality: '1..1', value: 'ASSERTION'

    #This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.5.4" (CodeSystem: ActCode 2.16.840.1.113883.5.4) (CONF:26504).
    constraint 'code.codeSystem', cardinality: '1..1', value: '2.16.840.1.113883.5.4'

    #SHALL contain exactly one [1..1] statusCode (CONF:8625).
    constraint 'statusCode', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19097).
    constraint 'statusCode.code', cardinality: '1..1', value: 'completed'

    #SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:8626).
    constraint 'value', cardinality: '1..1'

    #This value SHALL contain exactly one [1..1] @code="419099009" Dead (CodeSystem: SNOMED CT 2.16.840.1.113883.6.96 STATIC) (CONF:26470).
    constraint 'value.code', cardinality: '1..1', value: '419099009'
  end
end
