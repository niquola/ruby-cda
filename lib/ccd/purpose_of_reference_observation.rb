module Ccd
  class PurposeOfReferenceObservation < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:9264).
    constraint 'classCode', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:9265).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:9266) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.6.2.9" (CONF:10531).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.6.2.9'

    #SHALL contain exactly one [1..1] code (CONF:9267).
    constraint 'code', cardinality: '1..1'

    #This code SHOULD contain zero or one [0..1] @code="ASSERTION" Assertion (CodeSystem: ActCode 2.16.840.1.113883.5.4 STATIC) (CONF:19208).
    constraint 'code.code', cardinality: '0..1', value: 'ASSERTION'

    #For backwards compatibility with the DICOM CMET, the code MAY be drawn from ValueSet 2.16.840.1.113883.11.20.9.28 DICOMPurposeOfReference DYNAMIC.
    constraint 'code'

    #SHOULD contain zero or one [0..1] value with @xsi:type="CD", where the code SHOULD be selected from ValueSet DICOMPurposeOfReference 2.16.840.1.113883.11.20.9.28 DYNAMIC (CONF:9273).
    constraint 'value', cardinality: '0..1'
  end
end
