module Ccd
  class HospitalAdmissionMedicationsSection < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:10098) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.44" (CONF:10392).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.44'

    #SHALL contain exactly one [1..1] code (CONF:15482).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="42346-7" Medications on Admission (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15483).
    constraint 'code.code', cardinality: '1..1', value: '42346-7'

    #SHALL contain exactly one [1..1] title (CONF:10100).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:10101).
    constraint 'text', cardinality: '1..1'

    #SHOULD contain zero or more [0..*] entry (CONF:10102) such that it
    constraint 'entry', cardinality: '0..*'

    #SHALL contain exactly one [1..1] Admission Medication (templateId:2.16.840.1.113883.10.20.22.4.36) (CONF:15484).
    constraint 'entry.act', cardinality: '1..1'
  end
end
