module Ccd
  class HospitalAdmissionDiagnosisSection < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:9930) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.43" (CONF:10391).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.43'

    #SHALL contain exactly one [1..1] code (CONF:15479).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="46241-6" Hospital Admission Diagnosis (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15480).
    constraint 'code.code', cardinality: '1..1', value: '46241-6'

    #SHALL contain exactly one [1..1] title (CONF:9932).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:9933).
    constraint 'text', cardinality: '1..1'

    #SHOULD contain zero or one [0..1] entry (CONF:9934).
    constraint 'entry', cardinality: '0..1'

    #The entry, if present, SHALL contain exactly one [1..1] Hospital Admission Diagnosis (templateId:2.16.840.1.113883.10.20.22.4.34) (CONF:15481).
    constraint 'entry.act', cardinality: '1..1'

    Ccd.load_extension('hospital_admission_diagnosis_section.rb')
  end
end
