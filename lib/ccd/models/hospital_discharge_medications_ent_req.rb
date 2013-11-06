module Ccd
  class HospitalDischargeMedicationsEntReq < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7822) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.11.1" (CONF:10397).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.11.1'

    #SHALL contain exactly one [1..1] code (CONF:15361).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="10183-2" Hospital Discharge Medications (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15362).
    constraint 'code.code', cardinality: '1..1', value: '10183-2'

    #SHALL contain exactly one [1..1] title (CONF:7824).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:7825).
    constraint 'text', cardinality: '1..1'

    #SHALL contain at least one [1..*] entry (CONF:7826) such that it
    constraint 'entry', cardinality: '1..*'

    #SHALL contain exactly one [1..1] Discharge Medication (templateId:2.16.840.1.113883.10.20.22.4.35) (CONF:15491).
    constraint 'entry.act', cardinality: '1..1'

    Ccd.load_extension('HospitalDischargeMedicationsEntReq')
  end
end
