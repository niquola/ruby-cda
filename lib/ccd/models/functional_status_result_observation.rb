module Ccd
  class FunctionalStatusResultObservation < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:13905).
    constraint 'class_code', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:13906).
    constraint 'mood_code', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:13889) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.67" (CONF:13890).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.67'

    #SHALL contain at least one [1..*] id (CONF:13907).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] code (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:13908).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code, which SHOULD be selected from CodeSystem LOINC (2.16.840.1.113883.6.1) STATIC (CONF:26448).
    constraint 'code.code', cardinality: '1..1'

    #SHOULD contain zero or one [0..1] text (CONF:13926).
    constraint 'text', cardinality: '0..1'

    #The text, if present, SHOULD contain zero or one [0..1] reference (CONF:13927).
    constraint 'text.reference', cardinality: '0..1'

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'text.reference'

    #SHALL contain exactly one [1..1] statusCode (CONF:13929).
    constraint 'status_code', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19101).
    constraint 'status_code.code', cardinality: '1..1', value: 'completed'

    #SHALL contain exactly one [1..1] effectiveTime (CONF:13930).
    constraint 'effective_time', cardinality: '1..1'

    #SHALL contain exactly one [1..1] value (CONF:13932).
    constraint 'value', cardinality: '1..1'

    #If xsi:type=“CD”, SHOULD contain a code from SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96)
    constraint 'value'

    #SHOULD contain zero or more [0..*] interpretationCode (CONF:13933).
    constraint 'interpretation_code', cardinality: '0..*'

    #MAY contain zero or one [0..1] methodCode (CONF:13934).
    constraint 'method_code', cardinality: '0..1'

    #MAY contain zero or one [0..1] targetSiteCode (CONF:13935).
    constraint 'target_site_code', cardinality: '0..1'

    #MAY contain zero or one [0..1] author (CONF:13936).
    constraint 'author', cardinality: '0..1'

    #MAY contain zero or one [0..1] entryRelationship (CONF:13892) such that it
    constraint 'entry_relationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="REFR" refers to (CONF:14596).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'REFR'

    #SHALL contain exactly one [1..1] Non-Medicinal Supply Activity (templateId:2.16.840.1.113883.10.20.22.4.50) (CONF:14218).
    constraint 'entry_relationship.supply', cardinality: '1..1'

    #MAY contain zero or one [0..1] entryRelationship (CONF:13895) such that it
    constraint 'entry_relationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="REFR" refers to (CONF:14597).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'REFR'

    #SHALL contain exactly one [1..1] Caregiver Characteristics (templateId:2.16.840.1.113883.10.20.22.4.72) (CONF:13897).
    constraint 'entry_relationship.observation', cardinality: '1..1'

    #MAY contain zero or one [0..1] entryRelationship (CONF:14465) such that it
    constraint 'entry_relationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="COMP" has component (CONF:14598).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'COMP'

    #SHALL contain exactly one [1..1] Assessment Scale Observation (templateId:2.16.840.1.113883.10.20.22.4.69) (CONF:14466).
    constraint 'entry_relationship.observation', cardinality: '1..1'

    #SHOULD contain zero or more [0..*] referenceRange (CONF:13937).
    constraint 'reference_range', cardinality: '0..*'

    #The referenceRange, if present, SHALL contain exactly one [1..1] observationRange (CONF:13938).
    constraint 'reference_range.observation_range', cardinality: '1..1'

    #This observationRange SHALL NOT contain [0..0] code
    constraint 'reference_range.observation_range'

    Ccd.load_extension('functional_status_result_observation.rb')
  end
end
