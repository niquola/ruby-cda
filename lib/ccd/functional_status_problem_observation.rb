module Ccd
  class FunctionalStatusProblemObservation < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:14282).
    constraint 'classCode', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:14283).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #MAY contain zero or one [0..1] @negationInd (CONF:14307).
    constraint 'negationInd', cardinality: '0..1'

    #SHALL contain exactly one [1..1] templateId (CONF:14312) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.68" (CONF:14313).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.68'

    #SHALL contain at least one [1..*] id (CONF:14284).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] code (CONF:14314).
    constraint 'code', cardinality: '1..1'

    #This code SHOULD contain zero or one [0..1] @code="248536006" finding of functional performance and activity (CodeSystem: SNOMED CT 2.16.840.1.113883.6.96 STATIC) (CONF:14315).
    constraint 'code.code', cardinality: '0..1', value: '248536006'

    #SHOULD contain zero or one [0..1] text (CONF:14304).
    constraint 'text', cardinality: '0..1'

    #The text, if present, SHOULD contain zero or one [0..1] reference (CONF:15552).
    constraint 'text.reference', cardinality: '0..1'

    #The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:15553).
    constraint 'text.reference.value', cardinality: '0..1'

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'text.reference.value'

    #SHALL contain exactly one [1..1] statusCode (CONF:14286).
    constraint 'statusCode', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19100).
    constraint 'statusCode.code', cardinality: '1..1', value: 'completed'

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:14287).
    constraint 'effectiveTime', cardinality: '0..1'

    #The effectiveTime, if present, SHALL contain exactly one [1..1] low (CONF:26456).
    constraint 'effectiveTime.low', cardinality: '1..1'

    #The effectiveTime, if present, MAY contain zero or one [0..1] high (CONF:26457).
    constraint 'effectiveTime.high', cardinality: '0..1'

    #SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHOULD be selected from ValueSet Problem 2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:14291).
    constraint 'value', cardinality: '1..1'

    #This value MAY contain zero or one [0..1] @nullFlavor (CONF:14292).
    constraint 'value.nullFlavor', cardinality: '0..1'

    #	If the diagnosis is unknown or the SNOMED code is unknown, @nullFlavor SHOULD be “UNK”.  If the code is something other than SNOMED, @nullFlavor SHOULD be “OTH” and the other code SHOULD be placed in the translation element.
    constraint 'value.nullFlavor'

    #MAY contain zero or one [0..1] methodCode (CONF:14316).
    constraint 'methodCode', cardinality: '0..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:14294) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="REFR" refers to (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:14584).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'REFR'

    #SHALL contain exactly one [1..1] Non-Medicinal Supply Activity (templateId:2.16.840.1.113883.10.20.22.4.50) (CONF:14317).
    constraint 'entryRelationship.supply', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:14298) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="REFR" refers to (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:14586).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'REFR'

    #SHALL contain exactly one [1..1] Caregiver Characteristics (templateId:2.16.840.1.113883.10.20.22.4.72) (CONF:14318).
    constraint 'entryRelationship.observation', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:14463) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="COMP" has component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:14587).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'COMP'

    #SHALL contain exactly one [1..1] Assessment Scale Observation (templateId:2.16.840.1.113883.10.20.22.4.69) (CONF:14464).
    constraint 'entryRelationship.observation', cardinality: '1..1'
  end
end
