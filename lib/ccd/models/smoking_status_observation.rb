module Ccd
  class SmokingStatusObservation < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:14806).
    constraint 'class_code', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:14807).
    constraint 'mood_code', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:14815) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.78" (CONF:14816).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.78'

    #SHALL contain exactly one [1..1] code (CONF:19170).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="ASSERTION" Assertion (CodeSystem: ActCode 2.16.840.1.113883.5.4 STATIC) (CONF:19171).
    constraint 'code.code', cardinality: '1..1', value: 'ASSERTION'

    #SHALL contain exactly one [1..1] statusCode (CONF:14809).
    constraint 'status_code', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19116).
    constraint 'status_code.code', cardinality: '1..1', value: 'completed'

    #SHALL contain exactly one [1..1] effectiveTime (CONF:14814).
    constraint 'effective_time', cardinality: '1..1'

    #This effectiveTime SHALL contain exactly one [1..1] low (CONF:14818).
    constraint 'effective_time.low', cardinality: '1..1'

    #SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:14810).
    constraint 'value', cardinality: '1..1'

    #This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Current Smoking Status 2.16.840.1.113883.11.20.9.38 STATIC 2012-07-01 (CONF:14817).
    constraint 'value.code', cardinality: '1..1'

    Ccd.load_extension('smoking_status_observation.rb')
  end
end
