module Ccd
  class AssessmentScaleObservation < ::Cda::Observation
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:14434).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"OBS"}

    #SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:14435).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}

    #SHALL contain exactly one [1..1] templateId (CONF:14436) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.69" (CONF:14437).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.69"}

    #SHALL contain at least one [1..*] id (CONF:14438).
    constraint 'id', {:cardinality=>"1..*"}

    #SHALL contain exactly one [1..1] code (CONF:14439).
    constraint 'code', {:cardinality=>"1..1"}

    #SHOULD be from LOINC (CodeSystem: 2.16.840.1.113883.6.1) or SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) identifying the assessment scale
    constraint 'code', {}

    #MAY contain zero or one [0..1] derivationExpr (CONF:14637).
    constraint 'derivation_expr', {:cardinality=>"0..1"}

    #SHALL contain exactly one [1..1] statusCode (CONF:14444).
    constraint 'status_code', {:cardinality=>"1..1"}

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19088).
    constraint 'status_code.code', {:cardinality=>"1..1", :value=>"completed"}

    #SHALL contain exactly one [1..1] effectiveTime (CONF:14445).
    constraint 'effective_time', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] value (CONF:14450).
    constraint 'value', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] interpretationCode (CONF:14459).
    constraint 'interpretation_code', {:cardinality=>"0..*"}

    #The interpretationCode, if present, MAY contain zero or more [0..*] translation (CONF:14888).
    constraint 'interpretation_code.translation', {:cardinality=>"0..*"}

    #MAY contain zero or more [0..*] author (CONF:14460).
    constraint 'author', {:cardinality=>"0..*"}

    #SHOULD contain zero or more [0..*] entryRelationship (CONF:14451) such that it
    constraint 'entry_relationship', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] @typeCode="COMP" has component (CONF:16741).
    constraint 'entry_relationship.type_code', {:cardinality=>"1..1", :value=>"COMP"}

    #SHALL contain exactly one [1..1] Assessment Scale Supporting Observation (templateId:2.16.840.1.113883.10.20.22.4.86) (CONF:16742).
    constraint 'entry_relationship.observation', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] referenceRange (CONF:16799).
    constraint 'reference_range', {:cardinality=>"0..*"}

    #The referenceRange, if present, SHALL contain exactly one [1..1] observationRange (CONF:16800).
    constraint 'reference_range.observation_range', {:cardinality=>"1..1"}

    #This observationRange SHOULD contain zero or one [0..1] text (CONF:16801).
    constraint 'reference_range.observation_range.text', {:cardinality=>"0..1"}

    #The text, if present, SHOULD contain zero or one [0..1] reference (CONF:16802).
    constraint 'reference_range.observation_range.text.reference', {:cardinality=>"0..1"}

    #The reference, if present, MAY contain zero or one [0..1] @value (CONF:16803).
    constraint 'reference_range.observation_range.text.reference.value', {:cardinality=>"0..1"}

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'reference_range.observation_range.text.reference.value', {}

    Ccd.load_extension('assessment_scale_observation.rb')
  end
end
