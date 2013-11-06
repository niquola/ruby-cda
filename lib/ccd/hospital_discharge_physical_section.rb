module Ccd
  class HospitalDischargePhysicalSection < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7971) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="1.3.6.1.4.1.19376.1.5.3.1.3.26" (CONF:10460).
    constraint 'templateId.root', cardinality: '1..1', value: '1.3.6.1.4.1.19376.1.5.3.1.3.26'

    #SHALL contain exactly one [1..1] code (CONF:15363).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="10184-0" Hospital Discharge Physical (CONF:15364).
    constraint 'code.code', cardinality: '1..1', value: '10184-0'

    #This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26482).
    constraint 'code.codeSystem', cardinality: '1..1', value: '2.16.840.1.113883.6.1'

    #SHALL contain exactly one [1..1] title (CONF:7973).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:7974).
    constraint 'text', cardinality: '1..1'
  end
end
