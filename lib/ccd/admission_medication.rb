module Ccd
  class AdmissionMedication < ::Cda::Act
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="ACT" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7698).
    constraint 'classCode', cardinality: '1..1', value: 'ACT'

    #SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7699).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:16758) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.36" (CONF:16759).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.36'

    #SHALL contain exactly one [1..1] code (CONF:15518).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="42346-7" Medications on Admission (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15519).
    constraint 'code.code', cardinality: '1..1', value: '42346-7'

    #SHALL contain at least one [1..*] entryRelationship (CONF:7701) such that it
    constraint 'entryRelationship', cardinality: '1..*'

    #SHALL contain exactly one [1..1] @typeCode="SUBJ" (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7702).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'SUBJ'

    #SHALL contain exactly one [1..1] Medication Activity (templateId:2.16.840.1.113883.10.20.22.4.16) (CONF:15520).
    constraint 'entryRelationship.substanceAdministration', cardinality: '1..1'
  end
end