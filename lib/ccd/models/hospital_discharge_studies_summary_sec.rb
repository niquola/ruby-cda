module Ccd
  class HospitalDischargeStudiesSummarySec < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7910) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.16" (CONF:10398).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.16"}

    #SHALL contain exactly one [1..1] code (CONF:15365).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHALL contain exactly one [1..1] @code="11493-4" Hospital Discharge Studies Summary (CONF:15366).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"11493-4", :display_name=>"Hospital Discharge Studies Summary"}}

    #This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26483).
    constraint 'code.code_system', {:cardinality=>"1..1", :value=>{:code=>"2.16.840.1.113883.6.1", :display_name=>"", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    #SHALL contain exactly one [1..1] title (CONF:7912).
    constraint 'title', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] text (CONF:7913).
    constraint 'text', {:cardinality=>"1..1"}

    Ccd.load_extension('hospital_discharge_studies_summary_sec.rb')
  end
end
