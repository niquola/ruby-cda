module Ccd
  class ImmunizationRefusalReason < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8991).
    constraint 'classCode', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:8992).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:8993) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.53" (CONF:10500).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.53'

    #SHALL contain at least one [1..*] id (CONF:8994).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet No Immunization Reason Value Set 2.16.840.1.113883.1.11.19717 DYNAMIC (CONF:8995).
    constraint 'code', cardinality: '1..1'

    #SHALL contain exactly one [1..1] statusCode (CONF:8996).
    constraint 'statusCode', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19104).
    constraint 'statusCode.code', cardinality: '1..1', value: 'completed'

    Ccd.load_extension('ImmunizationRefusalReason')
  end
end
