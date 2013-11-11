module Ccd
  class ProblemSectionEntriesOptional < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7877) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.5" (CONF:10440).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.5"}

    #SHALL contain exactly one [1..1] code (CONF:15407).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHALL contain exactly one [1..1] @code="11450-4" Problem List (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15408).
    constraint 'code.code', {:cardinality=>"1..1", :value=>"11450-4"}

    #SHALL contain exactly one [1..1] title (CONF:7879).
    constraint 'title', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] text (CONF:7880).
    constraint 'text', {:cardinality=>"1..1"}

    #SHOULD contain zero or more [0..*] entry (CONF:7881).
    constraint 'entry', {:cardinality=>"0..*"}

    #The entry, if present, SHALL contain exactly one [1..1] Problem Concern Act (Condition) (templateId:2.16.840.1.113883.10.20.22.4.3) (CONF:15505).
    constraint 'entry.act', {:cardinality=>"1..1"}

    Ccd.load_extension('problem_section_entries_optional.rb')
  end
end
