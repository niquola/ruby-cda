module Ccd
  class CognitiveStatusResultObservation < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:14249).
    constraint 'classCode', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:14250).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:14255) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.74" (CONF:14256).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.74'

    #SHALL contain at least one [1..*] id (CONF:14257).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] code (CONF:14591).
    constraint 'code', cardinality: '1..1'

    #This code SHOULD contain zero or one [0..1] @code="373930000" Cognitive function finding (CodeSystem: SNOMED CT 2.16.840.1.113883.6.96 STATIC) (CONF:14592).
    constraint 'code.code', cardinality: '0..1', value: '373930000'

    #SHOULD contain zero or one [0..1] text (CONF:14258).
    constraint 'text', cardinality: '0..1'

    #The text, if present, SHOULD contain zero or one [0..1] reference (CONF:15549).
    constraint 'text.reference', cardinality: '0..1'

    #The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:15550).
    constraint 'text.reference.value', cardinality: '0..1'

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'text.reference.value'

    #SHALL contain exactly one [1..1] statusCode (CONF:14254).
    constraint 'statusCode', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19092).
    constraint 'statusCode.code', cardinality: '1..1', value: 'completed'

    #SHALL contain exactly one [1..1] effectiveTime (CONF:14261).
    constraint 'effectiveTime', cardinality: '1..1'

    #SHALL contain exactly one [1..1] value (CONF:14263).
    constraint 'value', cardinality: '1..1'

    #If xsi:type=“CD”, SHOULD contain a code from SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96)
    constraint 'value'

    #SHOULD contain zero or more [0..*] interpretationCode (CONF:14264).
    constraint 'interpretationCode', cardinality: '0..*'

    #MAY contain zero or one [0..1] methodCode (CONF:14265).
    constraint 'methodCode', cardinality: '0..1'

    #MAY contain zero or one [0..1] targetSiteCode (CONF:14270).
    constraint 'targetSiteCode', cardinality: '0..1'

    #MAY contain zero or one [0..1] author (CONF:14266).
    constraint 'author', cardinality: '0..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:14272) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="REFR" refers to (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:14593).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'REFR'

    #SHALL contain exactly one [1..1] Non-Medicinal Supply Activity (templateId:2.16.840.1.113883.10.20.22.4.50) (CONF:14273).
    constraint 'entryRelationship.supply', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:14276) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="REFR" refers to (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:14594).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'REFR'

    #SHALL contain exactly one [1..1] Caregiver Characteristics (templateId:2.16.840.1.113883.10.20.22.4.72) (CONF:14277).
    constraint 'entryRelationship.observation', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:14469) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="COMP" has component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:14595).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'COMP'

    #SHALL contain exactly one [1..1] Assessment Scale Observation (templateId:2.16.840.1.113883.10.20.22.4.69) (CONF:14470).
    constraint 'entryRelationship.observation', cardinality: '1..1'

    #SHOULD contain zero or more [0..*] referenceRange (CONF:14267).
    constraint 'referenceRange', cardinality: '0..*'

    #The referenceRange, if present, SHALL contain exactly one [1..1] observationRange (CONF:14268).
    constraint 'referenceRange.observationRange', cardinality: '1..1'

    #This observationRange SHALL NOT contain [0..0] code (CONF:14269).
    constraint 'referenceRange.observationRange.code', cardinality: '0..0'
  end
end
