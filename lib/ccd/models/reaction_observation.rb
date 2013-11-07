module Ccd
  class ReactionObservation < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7325).
    constraint 'class_code', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7326).
    constraint 'mood_code', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:7323) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.9" (CONF:10523).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.9'

    #SHALL contain exactly one [1..1] id (CONF:7329).
    constraint 'id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] code (CONF:16851).
    constraint 'code', cardinality: '1..1'

    #The value set for this code element has not been specified.  Implementers are allowed to use any code system, such as SNOMED CT, a locally determined code, or a nullFlavor
    constraint 'code'

    #SHOULD contain zero or one [0..1] text (CONF:7330).
    constraint 'text', cardinality: '0..1'

    #The text, if present, SHOULD contain zero or one [0..1] reference (CONF:15917).
    constraint 'text.reference', cardinality: '0..1'

    #The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:15918).
    constraint 'text.reference.value', cardinality: '0..1'

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
    constraint 'text.reference.value'

    #SHALL contain exactly one [1..1] statusCode (CONF:7328).
    constraint 'status_code', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19114).
    constraint 'status_code.code', cardinality: '1..1', value: 'completed'

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:7332).
    constraint 'effective_time', cardinality: '0..1'

    #The effectiveTime, if present, SHOULD contain zero or one [0..1] low (CONF:7333).
    constraint 'effective_time.low', cardinality: '0..1'

    #The effectiveTime, if present, SHOULD contain zero or one [0..1] high (CONF:7334).
    constraint 'effective_time.high', cardinality: '0..1'

    #SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHALL be selected from ValueSet Problem 2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:7335).
    constraint 'value', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:7337) such that it
    constraint 'entry_relationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="RSON" Has reason (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7338).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'RSON'

    #SHALL contain exactly one [1..1] @inversionInd="true" True (CONF:7343).
    constraint 'entry_relationship.inversion_ind', cardinality: '1..1', value: 'true'

    #SHALL contain exactly one [1..1] Procedure Activity Procedure (templateId:2.16.840.1.113883.10.20.22.4.14) (CONF:15920).
    constraint 'entry_relationship.procedure', cardinality: '1..1'

    #This procedure activity is intended to contain information about procedures that were performed in response to an allergy reaction
    constraint 'entry_relationship.procedure'

    #MAY contain zero or more [0..*] entryRelationship (CONF:7340) such that it
    constraint 'entry_relationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="RSON" Has reason (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7341).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'RSON'

    #SHALL contain exactly one [1..1] @inversionInd="true" True (CONF:7344).
    constraint 'entry_relationship.inversion_ind', cardinality: '1..1', value: 'true'

    #SHALL contain exactly one [1..1] Medication Activity (templateId:2.16.840.1.113883.10.20.22.4.16) (CONF:15921).
    constraint 'entry_relationship.substance_administration', cardinality: '1..1'

    #This medication activity is intended to contain information about medications that were administered in response to an allergy reaction
    constraint 'entry_relationship.substance_administration'

    #MAY contain zero or one [0..1] entryRelationship (CONF:7580) such that it
    constraint 'entry_relationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="SUBJ" Has subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7581).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'SUBJ'

    #SHALL contain exactly one [1..1] @inversionInd="true" TRUE (CONF:10375).
    constraint 'entry_relationship.inversion_ind', cardinality: '1..1', value: 'true'

    #SHALL contain exactly one [1..1] Severity Observation (templateId:2.16.840.1.113883.10.20.22.4.8) (CONF:15922).
    constraint 'entry_relationship.observation', cardinality: '1..1'

    Ccd.load_extension('reaction_observation.rb')
  end
end
