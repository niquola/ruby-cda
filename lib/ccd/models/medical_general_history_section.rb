module Ccd
  class MedicalGeneralHistorySection < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8160) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.39" (CONF:10403).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.39'

    #SHALL contain exactly one [1..1] code (CONF:15379).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="11329-0" Medical (General) History (CONF:15380).
    constraint 'code.code', cardinality: '1..1', value: '11329-0'

    #This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26484).
    constraint 'code.codeSystem', cardinality: '1..1', value: '2.16.840.1.113883.6.1'

    #SHALL contain exactly one [1..1] title (CONF:8162).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:8163).
    constraint 'text', cardinality: '1..1'

    Ccd.load_extension('MedicalGeneralHistorySection')
  end
end
