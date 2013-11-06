module Ccd
  class SOPInstanceObservation < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="DGIMG" Diagnostic Image (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:9240).
    constraint 'classCode', cardinality: '1..1', value: 'DGIMG'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:9241).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain at least one [1..*] id (CONF:9242).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] code (CONF:9244).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code (CONF:19225).
    constraint 'code.code', cardinality: '1..1'

    #@code is an OID for a valid SOP class name UID
    constraint 'code.code'

    #This code SHALL contain exactly one [1..1] @codeSystem="1.2.840.10008.2.6.1" DCMUID (CONF:19227).
    constraint 'code.codeSystem', cardinality: '1..1', value: '1.2.840.10008.2.6.1'

    #SHOULD contain zero or one [0..1] text (CONF:9246).
    constraint 'text', cardinality: '0..1'

    #The text, if present, SHALL contain exactly one [1..1] @mediaType="application/dicom" (CONF:9247).
    constraint 'text.mediaType', cardinality: '1..1', value: 'application/dicom'

    #The text, if present, SHALL contain exactly one [1..1] reference (CONF:9248).
    constraint 'text.reference', cardinality: '1..1'

    #SHALL contain a @value that contains a WADO reference as a URI
    constraint 'text.reference'

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:9250).
    constraint 'effectiveTime', cardinality: '0..1'

    #The effectiveTime, if present, SHALL contain exactly one [1..1] @value (CONF:9251).
    constraint 'effectiveTime.value', cardinality: '1..1'

    #The effectiveTime, if present, SHALL NOT contain [0..0] low (CONF:9252).
    constraint 'effectiveTime.low', cardinality: '0..0'

    #The effectiveTime, if present, SHALL NOT contain [0..0] high (CONF:9253).
    constraint 'effectiveTime.high', cardinality: '0..0'

    #MAY contain zero or more [0..*] entryRelationship (CONF:9254) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="SUBJ" Has Subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:9255).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'SUBJ'

    #MAY contain zero or more [0..*] entryRelationship (CONF:9257) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="RSON" Has Reason (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:9258).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'RSON'

    #SHALL contain exactly one [1..1] Purpose of Reference Observation (templateId:2.16.840.1.113883.10.20.6.2.9) (CONF:15935).
    constraint 'entryRelationship.observation', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:9260) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="COMP" Has Component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:9261).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'COMP'

    #SHALL contain exactly one [1..1] Referenced Frames Observation (templateId:2.16.840.1.113883.10.20.6.2.10) (CONF:15936).
    constraint 'entryRelationship.observation', cardinality: '1..1'

    #This entryRelationship SHALL be present if the referenced DICOM object is a multiframe object and the reference does not apply to all frames
    constraint 'entryRelationship'

    Ccd.load_extension('sop_instance_observation.rb')
  end
end
