module Ccd
  class ResultObservation < ::Cda::Observation
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7130).
    constraint 'class_code', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7131).
    constraint 'mood_code', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:7136) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.2" (CONF:9138).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.2'

    #SHALL contain at least one [1..*] id (CONF:7137).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] code (CONF:7133).
    constraint 'code', cardinality: '1..1'

    #SHOULD be from LOINC (CodeSystem: 2.16.840.1.113883.6.1) or SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96)
    constraint 'code'

    #Laboratory results SHOULD be from LOINC (CodeSystem: 2.16.840.1.113883.6.1) or other constrained terminology named by the US Department of Health and Human Services Office of National Coordinator or other federal agency. Local and/or regional codes for laboratory results are allowed. The Local and/or regional codes SHOULD be sent in the translation element. See the Local code example figure.
    constraint 'code'

    #SHOULD contain zero or one [0..1] text (CONF:7138).
    constraint 'text', cardinality: '0..1'

    #The text, if present, SHOULD contain zero or one [0..1] reference (CONF:15924).
    constraint 'text.reference', cardinality: '0..1'

    #The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:15925).
    constraint 'text.reference.value', cardinality: '0..1'

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'text.reference.value'

    #SHALL contain exactly one [1..1] statusCode (CONF:7134).
    constraint 'status_code', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Result Status 2.16.840.1.113883.11.20.9.39 STATIC (CONF:14849).
    constraint 'status_code.code', cardinality: '1..1'

    #SHALL contain exactly one [1..1] effectiveTime (CONF:7140).
    constraint 'effective_time', cardinality: '1..1'

    #Represents clinically effective time of the measurement, which may be when the measurement was performed (e.g., a BP measurement), or may be when sample was taken (and measured some time afterwards).
    constraint 'effective_time'

    #SHALL contain exactly one [1..1] value (CONF:7143).
    constraint 'value', cardinality: '1..1'

    #SHOULD contain zero or more [0..*] interpretationCode (CONF:7147).
    constraint 'interpretation_code', cardinality: '0..*'

    #MAY contain zero or one [0..1] methodCode (CONF:7148).
    constraint 'method_code', cardinality: '0..1'

    #MAY contain zero or one [0..1] targetSiteCode (CONF:7153).
    constraint 'target_site_code', cardinality: '0..1'

    #MAY contain zero or one [0..1] author (CONF:7149).
    constraint 'author', cardinality: '0..1'

    #SHOULD contain zero or more [0..*] referenceRange (CONF:7150).
    constraint 'reference_range', cardinality: '0..*'

    #The referenceRange, if present, SHALL contain exactly one [1..1] observationRange (CONF:7151).
    constraint 'reference_range.observation_range', cardinality: '1..1'

    #This observationRange SHALL NOT contain [0..0] code (CONF:7152).
    constraint 'reference_range.observation_range.code', cardinality: '0..0'

    Ccd.load_extension('result_observation.rb')
  end
end
