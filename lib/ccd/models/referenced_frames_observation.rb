module Ccd
  class ReferencedFramesObservation < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="ROIBND" Bounded Region of Interest (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:9276).
    constraint 'classCode', cardinality: '1..1', value: 'ROIBND'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:9277).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] code (CONF:19164).
    constraint 'code', cardinality: '1..1'

    #This code MAY contain zero or one [0..1] @code="121190" Referenced Frames (CodeSystem: DCM 1.2.840.10008.2.16.4 STATIC) (CONF:19165).
    constraint 'code.code', cardinality: '0..1', value: '121190'

    #SHALL contain exactly one [1..1] entryRelationship (CONF:9279).
    constraint 'entryRelationship', cardinality: '1..1'

    #This entryRelationship SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:9280).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'COMP'

    #This entryRelationship SHALL contain exactly one [1..1] Boundary Observation (templateId:2.16.840.1.113883.10.20.6.2.11) (CONF:15923).
    constraint 'entryRelationship.observation', cardinality: '1..1'

    Ccd.load_extension('ReferencedFramesObservation')
  end
end
