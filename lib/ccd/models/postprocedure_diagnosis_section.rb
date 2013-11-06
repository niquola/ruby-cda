module Ccd
  class PostprocedureDiagnosisSection < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8167) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.36" (CONF:10438).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.36'

    #SHALL contain exactly one [1..1] code (CONF:15403).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="59769-0" Postprocedure Diagnosis (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15404).
    constraint 'code.code', cardinality: '1..1', value: '59769-0'

    #SHALL contain exactly one [1..1] title (CONF:8170).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:8171).
    constraint 'text', cardinality: '1..1'

    #SHOULD contain zero or one [0..1] entry (CONF:8762) such that it
    constraint 'entry', cardinality: '0..1'

    #SHALL contain exactly one [1..1] Postprocedure Diagnosis (templateId:2.16.840.1.113883.10.20.22.4.51) (CONF:15503).
    constraint 'entry.act', cardinality: '1..1'

    Ccd.load_extension('PostprocedureDiagnosisSection')
  end
end
