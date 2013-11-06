module Ccd
  class HospitalDischargeMedicationsEntOpt < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7816) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.11" (CONF:10396).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.11'

    #SHALL contain exactly one [1..1] code (CONF:15359).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="10183-2" Hospital Discharge Medications (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15360).
    constraint 'code.code', cardinality: '1..1', value: '10183-2'

    #SHALL contain exactly one [1..1] title (CONF:7818).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:7819).
    constraint 'text', cardinality: '1..1'

    #SHOULD contain zero or more [0..*] entry (CONF:7820) such that it
    constraint 'entry', cardinality: '0..*'

    #SHALL contain exactly one [1..1] Discharge Medication (templateId:2.16.840.1.113883.10.20.22.4.35) (CONF:15490).
    constraint 'entry.act', cardinality: '1..1'

    Ccd.load_extension('hospital_discharge_medications_ent_opt.rb')
  end
end
