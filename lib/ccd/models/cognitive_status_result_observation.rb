module Ccd
  class CognitiveStatusResultObservation < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:14249).
    constraint 'class_code', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:14250).
    constraint 'mood_code', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:14255) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.74" (CONF:14256).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.74'

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
    constraint 'status_code', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19092).
    constraint 'status_code.code', cardinality: '1..1', value: 'completed'

    #SHALL contain exactly one [1..1] effectiveTime (CONF:14261).
    constraint 'effective_time', cardinality: '1..1'

    #SHALL contain exactly one [1..1] value (CONF:14263).
    constraint 'value', cardinality: '1..1'

    #If xsi:type=“CD”, SHOULD contain a code from SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96)
    constraint 'value'

    #SHOULD contain zero or more [0..*] interpretationCode (CONF:14264).
    constraint 'interpretation_code', cardinality: '0..*'

    #MAY contain zero or one [0..1] methodCode (CONF:14265).
    constraint 'method_code', cardinality: '0..1'

    #MAY contain zero or one [0..1] targetSiteCode (CONF:14270).
    constraint 'target_site_code', cardinality: '0..1'

    #MAY contain zero or one [0..1] author (CONF:14266).
    constraint 'author', cardinality: '0..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:14272) such that it
    constraint 'entry_relationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="REFR" refers to (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:14593).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'REFR'

    #SHALL contain exactly one [1..1] Non-Medicinal Supply Activity (templateId:2.16.840.1.113883.10.20.22.4.50) (CONF:14273).
    constraint 'entry_relationship.supply', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:14276) such that it
    constraint 'entry_relationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="REFR" refers to (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:14594).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'REFR'

    #SHALL contain exactly one [1..1] Caregiver Characteristics (templateId:2.16.840.1.113883.10.20.22.4.72) (CONF:14277).
    constraint 'entry_relationship.observation', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:14469) such that it
    constraint 'entry_relationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="COMP" has component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:14595).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'COMP'

    #SHALL contain exactly one [1..1] Assessment Scale Observation (templateId:2.16.840.1.113883.10.20.22.4.69) (CONF:14470).
    constraint 'entry_relationship.observation', cardinality: '1..1'

    #SHOULD contain zero or more [0..*] referenceRange (CONF:14267).
    constraint 'reference_range', cardinality: '0..*'

    #The referenceRange, if present, SHALL contain exactly one [1..1] observationRange (CONF:14268).
    constraint 'reference_range.observation_range', cardinality: '1..1'

    #This observationRange SHALL NOT contain [0..0] code (CONF:14269).
    constraint 'reference_range.observation_range.code', cardinality: '0..0'

    Ccd.load_extension('cognitive_status_result_observation.rb')
  end
end
