module Ccd
  class PregnancyObservation < ::Cda::Observation
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:451).
    constraint 'class_code', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:452).
    constraint 'mood_code', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:16768) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.15.3.8" (CONF:16868).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.15.3.8'

    #SHALL contain exactly one [1..1] code (CONF:19153).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="ASSERTION" Assertion (CONF:19154).
    constraint 'code.code', cardinality: '1..1', value: 'ASSERTION'

    #This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.5.4" (CodeSystem: ActCode 2.16.840.1.113883.5.4) (CONF:26505).
    constraint 'code.code_system', cardinality: '1..1', value: '2.16.840.1.113883.5.4'

    #SHALL contain exactly one [1..1] statusCode (CONF:455).
    constraint 'status_code', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19110).
    constraint 'status_code.code', cardinality: '1..1', value: 'completed'

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:2018).
    constraint 'effective_time', cardinality: '0..1'

    #SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:457).
    constraint 'value', cardinality: '1..1'

    #This value SHALL contain exactly one [1..1] @code="77386006" Pregnant (CodeSystem: SNOMED CT 2.16.840.1.113883.6.96) (CONF:26460).
    constraint 'value.code', cardinality: '1..1', value: '77386006'

    #MAY contain zero or one [0..1] entryRelationship (CONF:458) such that it
    constraint 'entry_relationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="REFR" Refers to (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:459).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'REFR'

    #SHALL contain exactly one [1..1] Estimated Date of Delivery (templateId:2.16.840.1.113883.10.20.15.3.1) (CONF:15584).
    constraint 'entry_relationship.observation', cardinality: '1..1'

    Ccd.load_extension('pregnancy_observation.rb')
  end
end
