module Ccd
  class HospitalDischargeInstructionsSectio < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:9919) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.41" (CONF:10395).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.41'

    #SHALL contain exactly one [1..1] code (CONF:15357).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="8653-8" Hospital Discharge Instructions (CONF:15358).
    constraint 'code.code', cardinality: '1..1', value: '8653-8'

    #This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26481).
    constraint 'code.codeSystem', cardinality: '1..1', value: '2.16.840.1.113883.6.1'

    #SHALL contain exactly one [1..1] title (CONF:9921).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:9922).
    constraint 'text', cardinality: '1..1'

    Ccd.load_extension('hospital_discharge_instructions_sectio.rb')
  end
end
