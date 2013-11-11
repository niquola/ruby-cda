module Ccd
  class ProceduresSectionEntriesRequired < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7891) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.7.1" (CONF:10447).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.7.1"}

    #SHALL contain exactly one [1..1] code (CONF:15425).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHALL contain exactly one [1..1] @code="47519-4" History of Procedures (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15426).
    constraint 'code.code', {:cardinality=>"1..1", :value=>"47519-4"}

    #SHALL contain exactly one [1..1] title (CONF:7893).
    constraint 'title', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] text (CONF:7894).
    constraint 'text', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entry (CONF:7895) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Procedure Activity Procedure (templateId:2.16.840.1.113883.10.20.22.4.14) (CONF:15512).
    constraint 'entry.procedure', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entry (CONF:8017) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Procedure Activity Observation (templateId:2.16.840.1.113883.10.20.22.4.13) (CONF:15513).
    constraint 'entry.observation', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entry (CONF:8019) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Procedure Activity Act (templateId:2.16.840.1.113883.10.20.22.4.12) (CONF:15514).
    constraint 'entry.act', {:cardinality=>"1..1"}

    #There SHALL be at least one procedure, observation or act entry conformant to Procedure Activity Procedure template, Procedure Activity Observation template or Procedure Activity Act template in the Procedure Section.
    constraint '', {}

    Ccd.load_extension('procedures_section_entries_required.rb')
  end
end
