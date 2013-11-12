module Ccd
  class EncountersSectionEntriesOptional < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7940) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.22" (CONF:10386).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.22"}

    #SHALL contain exactly one [1..1] code (CONF:15461).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHALL contain exactly one [1..1] @code="46240-8" Encounters (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15462).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"46240-8", :display_name=>"Encounters", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    #SHALL contain exactly one [1..1] title (CONF:7942).
    constraint 'title', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] text (CONF:7943).
    constraint 'text', {:cardinality=>"1..1"}

    #SHOULD contain zero or more [0..*] entry (CONF:7951) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Encounter Activities (templateId:2.16.840.1.113883.10.20.22.4.49) (CONF:15465).
    constraint 'entry.encounter', {:cardinality=>"1..1"}

    Ccd.load_extension('encounters_section_entries_optional.rb')
  end
end
