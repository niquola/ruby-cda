module Ccd
  class HospitalAdmissionDiagnosis < ::Cda::Act
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="ACT" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7671).
    constraint 'classCode', cardinality: '1..1', value: 'ACT'

    #SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7672).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:16747) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.34" (CONF:16748).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.34'

    #SHALL contain exactly one [1..1] code (CONF:19145).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="46241-6" Admission diagnosis (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:19146).
    constraint 'code.code', cardinality: '1..1', value: '46241-6'

    #SHALL contain at least one [1..*] entryRelationship (CONF:7674) such that it
    constraint 'entryRelationship', cardinality: '1..*'

    #SHALL contain exactly one [1..1] @typeCode="SUBJ" Has Subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7675).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'SUBJ'

    #SHALL contain exactly one [1..1] Problem Observation (templateId:2.16.840.1.113883.10.20.22.4.4) (CONF:15535).
    constraint 'entryRelationship.observation', cardinality: '1..1'

    Ccd.load_extension('hospital_admission_diagnosis.rb')
  end
end
