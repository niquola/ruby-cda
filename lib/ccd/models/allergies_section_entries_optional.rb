module Ccd
  class AllergiesSectionEntriesOptional < ::Cda::Section
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:7800) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.6" (CONF:10378).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.6"}

    # SHALL contain exactly one [1..1] code (CONF:15345).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"48765-2", :display_name=>"Allergies, adverse reactions, alerts", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] title (CONF:7802).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:7803).
    constraint 'text', {:cardinality=>"1..1"}

    Ccd.load_extension('allergies_section_entries_optional.rb')
  end
end
