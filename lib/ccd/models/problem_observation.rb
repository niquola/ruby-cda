module Ccd
  class ProblemObservation < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:9041).
    constraint 'classCode', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:9042).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #MAY contain zero or one [0..1] @negationInd (CONF:10139).
    constraint 'negationInd', cardinality: '0..1'

    #Use negationInd="true" to indicate that the problem was not observed.
    constraint 'negationInd'

    #SHALL contain exactly one [1..1] templateId (CONF:14926) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.4" (CONF:14927).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.4'

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
    constraint 'statusCode', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19112).
    constraint 'statusCode.code', cardinality: '1..1', value: 'completed'

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:9050).
    constraint 'effectiveTime', cardinality: '0..1'

    #The effectiveTime, if present, SHALL contain exactly one [1..1] low (CONF:15603).
    constraint 'effectiveTime.low', cardinality: '1..1'

    #The effectiveTime, if present, MAY contain zero or one [0..1] high (CONF:15604).
    constraint 'effectiveTime.high', cardinality: '0..1'

    #SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHOULD be selected from ValueSet Problem 2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:9058).
    constraint 'value', cardinality: '1..1'

    #This value MAY contain zero or more [0..*] translation (CONF:16749).
    constraint 'value.translation', cardinality: '0..*'

    #The translation, if present, MAY contain zero or one [0..1] @code (CodeSystem: ICD10CM 2.16.840.1.113883.6.90 STATIC) (CONF:16750).
    constraint 'value.translation.code', cardinality: '0..1'

    #This value MAY contain zero or one [0..1] @nullFlavor (CONF:10141).
    constraint 'value.nullFlavor', cardinality: '0..1'

    #	If the diagnosis is unknown or the SNOMED code is unknown, @nullFlavor SHOULD be “UNK”.  If the code is something other than SNOMED, @nullFlavor SHOULD be “OTH” and the other code SHOULD be placed in the translation element
    constraint 'value.nullFlavor'

    #MAY contain zero or one [0..1] entryRelationship (CONF:9059) such that it
    constraint 'entryRelationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="SUBJ" Has subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:9060).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'SUBJ'

    #SHALL contain exactly one [1..1] @inversionInd="true" True (CONF:9069).
    constraint 'entryRelationship.inversionInd', cardinality: '1..1', value: 'true'

    #SHALL contain exactly one [1..1] Age Observation (templateId:2.16.840.1.113883.10.20.22.4.31) (CONF:15590).
    constraint 'entryRelationship.observation', cardinality: '1..1'

    #MAY contain zero or one [0..1] entryRelationship (CONF:9063) such that it
    constraint 'entryRelationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="REFR" Refers to (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:9068).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'REFR'

    #SHALL contain exactly one [1..1] Problem Status (templateId:2.16.840.1.113883.10.20.22.4.6) (CONF:15591).
    constraint 'entryRelationship.observation', cardinality: '1..1'

    #MAY contain zero or one [0..1] entryRelationship (CONF:9067) such that it
    constraint 'entryRelationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="REFR" Refers to (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:9064).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'REFR'

    #SHALL contain exactly one [1..1] Health Status Observation (templateId:2.16.840.1.113883.10.20.22.4.5) (CONF:15592).
    constraint 'entryRelationship.observation', cardinality: '1..1'

    Ccd.load_extension('ProblemObservation')
  end
end
