module Ccd
  class CognitiveStatusProblemObservation < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:14319).
    constraint 'classCode', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:14320).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #MAY contain zero or one [0..1] @negationInd (CONF:14344).
    constraint 'negationInd', cardinality: '0..1'

    #SHALL contain exactly one [1..1] templateId (CONF:14346) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.73" (CONF:14347).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.73'

    #SHALL contain at least one [1..*] id (CONF:14321).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] code (CONF:14804).
    constraint 'code', cardinality: '1..1'

    #This code SHOULD contain zero or one [0..1] @code="373930000" Cognitive function finding   (CodeSystem: SNOMED CT 2.16.840.1.113883.6.96 STATIC) (CONF:14805).
    constraint 'code.code', cardinality: '0..1', value: '373930000'

    #SHOULD contain zero or one [0..1] text (CONF:14341).
    constraint 'text', cardinality: '0..1'

    #The text, if present, SHOULD contain zero or one [0..1] reference (CONF:15532).
    constraint 'text.reference', cardinality: '0..1'

    #The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:15533).
    constraint 'text.reference.value', cardinality: '0..1'

    #SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'text.reference.value'

    #SHALL contain exactly one [1..1] statusCode (CONF:14323).
    constraint 'statusCode', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19091).
    constraint 'statusCode.code', cardinality: '1..1', value: 'completed'

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:14324).
    constraint 'effectiveTime', cardinality: '0..1'

    #The effectiveTime, if present, SHALL contain exactly one [1..1] low (CONF:26458).
    constraint 'effectiveTime.low', cardinality: '1..1'

    #The effectiveTime, if present, MAY contain zero or one [0..1] high (CONF:26459).
    constraint 'effectiveTime.high', cardinality: '0..1'

    #SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHOULD be selected from ValueSet Problem 2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:14349).
    constraint 'value', cardinality: '1..1'

    #MAY contain zero or more [0..*] methodCode (CONF:14693).
    constraint 'methodCode', cardinality: '0..*'

    #MAY contain zero or more [0..*] entryRelationship (CONF:14331) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="REFR" refers to (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:14588).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'REFR'

    #SHALL contain exactly one [1..1] Non-Medicinal Supply Activity (templateId:2.16.840.1.113883.10.20.22.4.50) (CONF:14351).
    constraint 'entryRelationship.supply', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:14335) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="REFR" refers to (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:14589).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'REFR'

    #SHALL contain exactly one [1..1] Caregiver Characteristics (templateId:2.16.840.1.113883.10.20.22.4.72) (CONF:14352).
    constraint 'entryRelationship.observation', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:14467) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="COMP" has component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:14590).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'COMP'

    #SHALL contain exactly one [1..1] Assessment Scale Observation (templateId:2.16.840.1.113883.10.20.22.4.69) (CONF:14468).
    constraint 'entryRelationship.observation', cardinality: '1..1'
  end
end
