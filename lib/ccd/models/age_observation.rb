module Ccd
  class AgeObservation < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7613).
    constraint 'classCode', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7614).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:7899) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.31" (CONF:10487).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.31'

    #SHALL contain exactly one [1..1] code (CONF:7615).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="445518008" Age At Onset (CONF:16776).
    constraint 'code.code', cardinality: '1..1', value: '445518008'

    #This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT 2.16.840.1.113883.6.96) (CONF:26499).
    constraint 'code.codeSystem', cardinality: '1..1', value: '2.16.840.1.113883.6.96'

    #SHALL contain exactly one [1..1] statusCode (CONF:15965).
    constraint 'statusCode', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:15966).
    constraint 'statusCode.code', cardinality: '1..1', value: 'completed'

    #SHALL contain exactly one [1..1] value with @xsi:type="PQ" (CONF:7617).
    constraint 'value', cardinality: '1..1'

    #This value SHALL contain exactly one [1..1] @unit, which SHALL be selected from ValueSet AgePQ_UCUM 2.16.840.1.113883.11.20.9.21 DYNAMIC (CONF:7618).
    constraint 'value.unit', cardinality: '1..1'

    Ccd.load_extension('age_observation.rb')
  end
end
