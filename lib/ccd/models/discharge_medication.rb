module Ccd
  class DischargeMedication < ::Cda::Act
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="ACT" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7689).
    constraint 'classCode', cardinality: '1..1', value: 'ACT'

    #SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7690).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:16760) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.35" (CONF:16761).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.35'

    #SHALL contain exactly one [1..1] code (CONF:7691).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="10183-2" Discharge medication (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:19161).
    constraint 'code.code', cardinality: '1..1', value: '10183-2'

    #SHALL contain at least one [1..*] entryRelationship (CONF:7692) such that it
    constraint 'entryRelationship', cardinality: '1..*'

    #SHALL contain exactly one [1..1] @typeCode="SUBJ" Has Subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7693).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'SUBJ'

    #SHALL contain exactly one [1..1] Medication Activity (templateId:2.16.840.1.113883.10.20.22.4.16) (CONF:15525).
    constraint 'entryRelationship.substanceAdministration', cardinality: '1..1'

    Ccd.load_extension('discharge_medication.rb')
  end
end
