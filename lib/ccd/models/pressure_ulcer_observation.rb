module Ccd
  class PressureUlcerObservation < ::Cda::Observation
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:14383).
    constraint 'class_code', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:14384).
    constraint 'mood_code', cardinality: '1..1', value: 'EVN'

    #MAY contain zero or one [0..1] @negationInd (CONF:14385).
    constraint 'negation_ind', cardinality: '0..1'

    #SHALL contain exactly one [1..1] templateId (CONF:14387) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.70" (CONF:14388).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.70'

    #SHALL contain at least one [1..*] id (CONF:14389).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] code (CONF:14759).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="ASSERTION" Assertion (CodeSystem: ActCode 2.16.840.1.113883.5.4 STATIC) (CONF:14760).
    constraint 'code.code', cardinality: '1..1', value: 'ASSERTION'

    #SHOULD contain zero or one [0..1] text (CONF:14391).
    constraint 'text', cardinality: '0..1'

    #The text, if present, SHOULD contain zero or one [0..1] reference (CONF:14392).
    constraint 'text.reference', cardinality: '0..1'

    #The reference, if present, SHALL contain exactly one [1..1] @value (CONF:15585).
    constraint 'text.reference.value', cardinality: '1..1'

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'text.reference.value'

    #SHALL contain exactly one [1..1] statusCode (CONF:14394).
    constraint 'status_code', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19111).
    constraint 'status_code.code', cardinality: '1..1', value: 'completed'

    #SHALL contain exactly one [1..1] effectiveTime (CONF:14395).
    constraint 'effective_time', cardinality: '1..1'

    #SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHOULD be selected from ValueSet Pressure Ulcer Stage 2.16.840.1.113883.11.20.9.35 STATIC (CONF:14396).
    constraint 'value', cardinality: '1..1'

    #This value MAY contain zero or one [0..1] @nullFlavor (CONF:14397).
    constraint 'value.null_flavor', cardinality: '0..1'

    #If the stage unknown or the SNOMED code is unknown, @nullFlavor SHOULD be “UNK”.  If the code is something other than SNOMED, @nullFlavor SHOULD be “OTH” and the other code SHOULD be placed in the translation element
    constraint 'value.null_flavor'

    #SHOULD contain zero or more [0..*] targetSiteCode (CONF:14797).
    constraint 'target_site_code', cardinality: '0..*'

    #The targetSiteCode, if present, SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet Pressure Point  2.16.840.1.113883.11.20.9.36 STATIC (CONF:14798).
    constraint 'target_site_code.code', cardinality: '1..1'

    #The targetSiteCode, if present, SHOULD contain zero or one [0..1] qualifier (CONF:14799).
    constraint 'target_site_code.qualifier', cardinality: '0..1'

    #The qualifier, if present, SHALL contain exactly one [1..1] name (CONF:14800).
    constraint 'target_site_code.qualifier.name', cardinality: '1..1'

    #This name SHOULD contain zero or one [0..1] @code="272741003" laterality (CodeSystem: SNOMED CT 2.16.840.1.113883.6.96 STATIC) (CONF:14801).
    constraint 'target_site_code.qualifier.name.code', cardinality: '0..1', value: '272741003'

    #The qualifier, if present, SHALL contain exactly one [1..1] value (CONF:14802).
    constraint 'target_site_code.qualifier.value', cardinality: '1..1'

    #This value SHOULD contain zero or one [0..1] @code, which SHOULD be selected from ValueSet TargetSite Qualifiers  2.16.840.1.113883.11.20.9.37 STATIC (CONF:14803).
    constraint 'target_site_code.qualifier.value.code', cardinality: '0..1'

    #SHOULD contain zero or one [0..1] entryRelationship (CONF:14410) such that it
    constraint 'entry_relationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="COMP" (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:14411).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'COMP'

    #SHALL contain exactly one [1..1] observation (CONF:14619).
    constraint 'entry_relationship.observation', cardinality: '1..1'

    #This observation SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:14685).
    constraint 'entry_relationship.observation.class_code', cardinality: '1..1', value: 'OBS'

    #This observation SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:14686).
    constraint 'entry_relationship.observation.mood_code', cardinality: '1..1', value: 'EVN'

    #This observation SHALL contain exactly one [1..1] code (CONF:14620).
    constraint 'entry_relationship.observation.code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="401238003" Length of Wound (CodeSystem: SNOMED CT 2.16.840.1.113883.6.96 STATIC) (CONF:14621).
    constraint 'entry_relationship.observation.code.code', cardinality: '1..1', value: '401238003'

    #This observation SHALL contain exactly one [1..1] value with @xsi:type="PQ" (CONF:14622).
    constraint 'entry_relationship.observation.value', cardinality: '1..1'

    #SHOULD contain zero or one [0..1] entryRelationship (CONF:14601) such that it
    constraint 'entry_relationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="COMP" (CONF:14602).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'COMP'

    #SHALL contain exactly one [1..1] observation (CONF:14623).
    constraint 'entry_relationship.observation', cardinality: '1..1'

    #This observation SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:14687).
    constraint 'entry_relationship.observation.class_code', cardinality: '1..1', value: 'OBS'

    #This observation SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:14688).
    constraint 'entry_relationship.observation.mood_code', cardinality: '1..1', value: 'EVN'

    #This observation SHALL contain exactly one [1..1] code (CONF:14624).
    constraint 'entry_relationship.observation.code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="401239006" Width of Wound (CodeSystem: SNOMED CT 2.16.840.1.113883.6.96 STATIC) (CONF:14625).
    constraint 'entry_relationship.observation.code.code', cardinality: '1..1', value: '401239006'

    #This observation SHALL contain exactly one [1..1] value with @xsi:type="PQ" (CONF:14626).
    constraint 'entry_relationship.observation.value', cardinality: '1..1'

    #SHOULD contain zero or one [0..1] entryRelationship (CONF:14605) such that it
    constraint 'entry_relationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="COMP" (CONF:14606).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'COMP'

    #SHALL contain exactly one [1..1] observation (CONF:14627).
    constraint 'entry_relationship.observation', cardinality: '1..1'

    #This observation SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:14689).
    constraint 'entry_relationship.observation.class_code', cardinality: '1..1', value: 'OBS'

    #This observation SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:14690).
    constraint 'entry_relationship.observation.mood_code', cardinality: '1..1', value: 'EVN'

    #This observation SHALL contain exactly one [1..1] code (CONF:14628).
    constraint 'entry_relationship.observation.code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="425094009" Depth of Wound (CodeSystem: SNOMED CT 2.16.840.1.113883.6.96 STATIC) (CONF:14629).
    constraint 'entry_relationship.observation.code.code', cardinality: '1..1', value: '425094009'

    #This observation SHALL contain exactly one [1..1] value with @xsi:type="PQ" (CONF:14630).
    constraint 'entry_relationship.observation.value', cardinality: '1..1'

    Ccd.load_extension('pressure_ulcer_observation.rb')
  end
end
