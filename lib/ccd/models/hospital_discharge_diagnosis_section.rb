module Ccd
  class HospitalDischargeDiagnosisSection < ::Cda::Section
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:7979) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.24" (CONF:10394).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.24"}

    # SHALL contain exactly one [1..1] code (CONF:15355).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"11535-2", :display_name=>"Hospital Discharge Diagnosis", :code_system=>"2.16.840.1.113883.6.1"}}

    # SHALL contain exactly one [1..1] title (CONF:7981).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:7982).
    constraint 'text', {:cardinality=>"1..1"}

    Ccd.load_extension('hospital_discharge_diagnosis_section.rb')
  end
end
