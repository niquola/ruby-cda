module Ccd
  class VitalSignsSectionEntriesOptional < ::Cda::Section
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:7268) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.4" (CONF:10451).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.4"}

    # SHALL contain exactly one [1..1] code (CONF:15242).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"8716-3", :display_name=>"Vital Signs", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] title (CONF:9966).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:7270).
    constraint 'text', {:cardinality=>"1..1"}

    Ccd.load_extension('vital_signs_section_entries_optional.rb')
  end
end
