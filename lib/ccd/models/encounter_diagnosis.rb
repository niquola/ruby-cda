module Ccd
  class EncounterDiagnosis < ::Cda::Act
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="ACT" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:14889).
    constraint 'class_code', cardinality: '1..1', value: 'ACT'

    #SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:14890).
    constraint 'mood_code', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:14895) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.80" (CONF:14896).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.80'

    #SHALL contain exactly one [1..1] code (CONF:19182).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="29308-4" Diagnosis (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:19183).
    constraint 'code.code', cardinality: '1..1', value: '29308-4'

    #SHALL contain at least one [1..*] entryRelationship (CONF:14892) such that it
    constraint 'entry_relationship', cardinality: '1..*'

    #SHALL contain exactly one [1..1] @typeCode="SUBJ" (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:14893).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'SUBJ'

    #SHALL contain exactly one [1..1] Problem Observation (templateId:2.16.840.1.113883.10.20.22.4.4) (CONF:14898).
    constraint 'entry_relationship.observation', cardinality: '1..1'

    Ccd.load_extension('encounter_diagnosis.rb')
  end
end
