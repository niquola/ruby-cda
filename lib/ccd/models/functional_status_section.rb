module Ccd
  class FunctionalStatusSection < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7920) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.14" (CONF:10389).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.14"}

    #SHALL contain exactly one [1..1] code (CONF:14578).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHALL contain exactly one [1..1] @code="47420-5" Functional Status (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:14579).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"47420-5", :display_name=>"Functional Status", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    #SHALL contain exactly one [1..1] title (CONF:7922).
    constraint 'title', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] text (CONF:7923).
    constraint 'text', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entry (CONF:14414) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Functional Status Result Organizer (templateId:2.16.840.1.113883.10.20.22.4.66) (CONF:14415).
    constraint 'entry.organizer', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entry (CONF:14416) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Cognitive Status Result Organizer (templateId:2.16.840.1.113883.10.20.22.4.75) (CONF:14417).
    constraint 'entry.organizer', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entry (CONF:14418) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Functional Status Result Observation (templateId:2.16.840.1.113883.10.20.22.4.67) (CONF:14419).
    constraint 'entry.observation', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entry (CONF:14420) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Cognitive Status Result Observation (templateId:2.16.840.1.113883.10.20.22.4.74) (CONF:14421).
    constraint 'entry.observation', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entry (CONF:14422) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Functional Status Problem Observation (templateId:2.16.840.1.113883.10.20.22.4.68) (CONF:14423).
    constraint 'entry.observation', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entry (CONF:14424) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Cognitive Status Problem Observation (templateId:2.16.840.1.113883.10.20.22.4.73) (CONF:14425).
    constraint 'entry.observation', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entry (CONF:14426) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Caregiver Characteristics (templateId:2.16.840.1.113883.10.20.22.4.72) (CONF:14427).
    constraint 'entry.observation', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entry (CONF:14580) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Assessment Scale Observation (templateId:2.16.840.1.113883.10.20.22.4.69) (CONF:14581).
    constraint 'entry.observation', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entry (CONF:14582) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Non-Medicinal Supply Activity (templateId:2.16.840.1.113883.10.20.22.4.50) (CONF:14583).
    constraint 'entry.observation', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entry (CONF:16777) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Pressure Ulcer Observation (templateId:2.16.840.1.113883.10.20.22.4.70) (CONF:16778).
    constraint 'entry.observation', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entry (CONF:16779) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Number of Pressure Ulcers Observation (templateId:2.16.840.1.113883.10.20.22.4.76) (CONF:16780).
    constraint 'entry.observation', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entry (CONF:16781) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Highest Pressure Ulcer Stage (templateId:2.16.840.1.113883.10.20.22.4.77) (CONF:16782).
    constraint 'entry.observation', {:cardinality=>"1..1"}

    Ccd.load_extension('functional_status_section.rb')
  end
end
