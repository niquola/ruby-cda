module Ccd
  class EncountersSectionEntriesRequired < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8705) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.22.1" (CONF:10387).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.22.1"}

    #SHALL contain exactly one [1..1] code (CONF:15466).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHALL contain exactly one [1..1] @code="46240-8" Encounters (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15467).
    constraint 'code.code', {:cardinality=>"1..1", :value=>"46240-8"}

    #SHALL contain exactly one [1..1] title (CONF:8707).
    constraint 'title', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] text (CONF:8708).
    constraint 'text', {:cardinality=>"1..1"}

    #SHALL contain at least one [1..*] entry (CONF:8709) such that it
    constraint 'entry', {:cardinality=>"1..*"}

    #SHALL contain exactly one [1..1] Encounter Activities (templateId:2.16.840.1.113883.10.20.22.4.49) (CONF:15468).
    constraint 'entry.encounter', {:cardinality=>"1..1"}

    Ccd.load_extension('encounters_section_entries_required.rb')
  end
end
