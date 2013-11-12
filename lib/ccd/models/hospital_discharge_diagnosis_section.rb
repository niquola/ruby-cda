module Ccd
  class HospitalDischargeDiagnosisSection < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7979) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.24" (CONF:10394).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.24"}

    #SHALL contain exactly one [1..1] code (CONF:15355).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHALL contain exactly one [1..1] @code="11535-2" Hospital Discharge Diagnosis (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15356).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"11535-2", :display_name=>"Hospital Discharge Diagnosis", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    #SHALL contain exactly one [1..1] title (CONF:7981).
    constraint 'title', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] text (CONF:7982).
    constraint 'text', {:cardinality=>"1..1"}

    #SHOULD contain zero or one [0..1] entry (CONF:7983).
    constraint 'entry', {:cardinality=>"0..1"}

    #The entry, if present, SHALL contain exactly one [1..1] Hospital Discharge Diagnosis (templateId:2.16.840.1.113883.10.20.22.4.33) (CONF:15489).
    constraint 'entry.act', {:cardinality=>"1..1"}

    Ccd.load_extension('hospital_discharge_diagnosis_section.rb')
  end
end
