module Ccd
  class ProblemObservation < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:9041).
    constraint 'class_code', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:9042).
    constraint 'mood_code', cardinality: '1..1', value: 'EVN'

    #MAY contain zero or one [0..1] @negationInd (CONF:10139).
    constraint 'negation_ind', cardinality: '0..1'

    #Use negationInd="true" to indicate that the problem was not observed.
    constraint 'negation_ind'

    #SHALL contain exactly one [1..1] templateId (CONF:14926) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.4" (CONF:14927).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.4'

    #SHALL contain at least one [1..*] id (CONF:9043).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Problem Type 2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2012-06-01 (CONF:9045).
    constraint 'code', cardinality: '1..1'

    #SHOULD contain zero or one [0..1] text (CONF:9185).
    constraint 'text', cardinality: '0..1'

    #The text, if present, SHOULD contain zero or one [0..1] reference (CONF:15587).
    constraint 'text.reference', cardinality: '0..1'

    #The reference, if present, SHALL contain exactly one [1..1] @value (CONF:15588).
    constraint 'text.reference.value', cardinality: '1..1'

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'text.reference.value'

    #SHALL contain exactly one [1..1] statusCode (CONF:9049).
    constraint 'status_code', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19112).
    constraint 'status_code.code', cardinality: '1..1', value: 'completed'

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:9050).
    constraint 'effective_time', cardinality: '0..1'

    #The effectiveTime, if present, SHALL contain exactly one [1..1] low (CONF:15603).
    constraint 'effective_time.low', cardinality: '1..1'

    #The effectiveTime, if present, MAY contain zero or one [0..1] high (CONF:15604).
    constraint 'effective_time.high', cardinality: '0..1'

    #SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHOULD be selected from ValueSet Problem 2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:9058).
    constraint 'value', cardinality: '1..1'

    #This value MAY contain zero or more [0..*] translation (CONF:16749).
    constraint 'value.translation', cardinality: '0..*'

    #The translation, if present, MAY contain zero or one [0..1] @code (CodeSystem: ICD10CM 2.16.840.1.113883.6.90 STATIC) (CONF:16750).
    constraint 'value.translation.code', cardinality: '0..1'

    #This value MAY contain zero or one [0..1] @nullFlavor (CONF:10141).
    constraint 'value.null_flavor', cardinality: '0..1'

    #	If the diagnosis is unknown or the SNOMED code is unknown, @nullFlavor SHOULD be “UNK”.  If the code is something other than SNOMED, @nullFlavor SHOULD be “OTH” and the other code SHOULD be placed in the translation element
    constraint 'value.null_flavor'

    #MAY contain zero or one [0..1] entryRelationship (CONF:9059) such that it
    constraint 'entry_relationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="SUBJ" Has subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:9060).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'SUBJ'

    #SHALL contain exactly one [1..1] @inversionInd="true" True (CONF:9069).
    constraint 'entry_relationship.inversion_ind', cardinality: '1..1', value: 'true'

    #SHALL contain exactly one [1..1] Age Observation (templateId:2.16.840.1.113883.10.20.22.4.31) (CONF:15590).
    constraint 'entry_relationship.observation', cardinality: '1..1'

    #MAY contain zero or one [0..1] entryRelationship (CONF:9063) such that it
    constraint 'entry_relationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="REFR" Refers to (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:9068).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'REFR'

    #SHALL contain exactly one [1..1] Problem Status (templateId:2.16.840.1.113883.10.20.22.4.6) (CONF:15591).
    constraint 'entry_relationship.observation', cardinality: '1..1'

    #MAY contain zero or one [0..1] entryRelationship (CONF:9067) such that it
    constraint 'entry_relationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="REFR" Refers to (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:9064).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'REFR'

    #SHALL contain exactly one [1..1] Health Status Observation (templateId:2.16.840.1.113883.10.20.22.4.5) (CONF:15592).
    constraint 'entry_relationship.observation', cardinality: '1..1'

    Ccd.load_extension('problem_observation.rb')
  end
end
