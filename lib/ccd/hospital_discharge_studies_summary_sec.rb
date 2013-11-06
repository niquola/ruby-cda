module Ccd
  class HospitalDischargeStudiesSummarySec < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7910) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.16" (CONF:10398).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.16'

    #SHALL contain exactly one [1..1] code (CONF:15365).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="11493-4" Hospital Discharge Studies Summary (CONF:15366).
    constraint 'code.code', cardinality: '1..1', value: '11493-4'

    #This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26483).
    constraint 'code.codeSystem', cardinality: '1..1', value: '2.16.840.1.113883.6.1'

    #SHALL contain exactly one [1..1] title (CONF:7912).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:7913).
    constraint 'text', cardinality: '1..1'
  end
end
