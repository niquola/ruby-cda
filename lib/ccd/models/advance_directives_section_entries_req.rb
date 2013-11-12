module Ccd
  class AdvanceDirectivesSectionEntriesReq < ::Cda::Section
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:8643) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.21.1" (CONF:10377).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.21.1"}

    # SHALL contain exactly one [1..1] code (CONF:15343).
    constraint 'code', {:cardinality=>"1..1"}

    # This code SHALL contain exactly one [1..1] @code="42348-3" Advance Directives (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15344).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"42348-3", :display_name=>"Advance Directives", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] title (CONF:8645).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:8646).
    constraint 'text', {:cardinality=>"1..1"}

    # SHALL contain at least one [1..*] entry (CONF:8647) such that it
    constraint 'entry', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] Advance Directive Observation (templateId:2.16.840.1.113883.10.20.22.4.48) (CONF:15445).
    constraint 'entry.observation', {:cardinality=>"1..1"}

    Ccd.load_extension('advance_directives_section_entries_req.rb')
  end
end
