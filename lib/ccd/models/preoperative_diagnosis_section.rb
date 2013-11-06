module Ccd
  class PreoperativeDiagnosisSection < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8097) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.34" (CONF:10439).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.34'

    #SHALL contain exactly one [1..1] code (CONF:15405).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="10219-4" Preoperative Diagnosis (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15406).
    constraint 'code.code', cardinality: '1..1', value: '10219-4'

    #SHALL contain exactly one [1..1] title (CONF:8099).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:8100).
    constraint 'text', cardinality: '1..1'

    #SHOULD contain zero or one [0..1] entry (CONF:10096) such that it
    constraint 'entry', cardinality: '0..1'

    #SHALL contain exactly one [1..1] Preoperative Diagnosis (templateId:2.16.840.1.113883.10.20.22.4.65) (CONF:15504).
    constraint 'entry.act', cardinality: '1..1'

    Ccd.load_extension('preoperative_diagnosis_section.rb')
  end
end
