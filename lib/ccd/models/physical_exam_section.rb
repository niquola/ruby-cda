module Ccd
  class PhysicalExamSection < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7806) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.2.10" (CONF:10465).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.2.10"}

    #SHALL contain exactly one [1..1] code (CONF:15397).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHALL contain exactly one [1..1] @code="29545-1" Physical Findings (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15398).
    constraint 'code.code', {:cardinality=>"1..1", :value=>"29545-1"}

    #SHALL contain exactly one [1..1] title (CONF:7808).
    constraint 'title', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] text (CONF:7809).
    constraint 'text', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entry (CONF:17094) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Pressure Ulcer Observation (templateId:2.16.840.1.113883.10.20.22.4.70) (CONF:17095).
    constraint 'entry.observation', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entry (CONF:17096) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Number of Pressure Ulcers Observation (templateId:2.16.840.1.113883.10.20.22.4.76) (CONF:17097).
    constraint 'entry.observation', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entry (CONF:17098) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Highest Pressure Ulcer Stage (templateId:2.16.840.1.113883.10.20.22.4.77) (CONF:17099).
    constraint 'entry.observation', {:cardinality=>"1..1"}

    Ccd.load_extension('physical_exam_section.rb')
  end
end
