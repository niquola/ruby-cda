module Ccd
  class VitalSignsSectionEntriesRequired < ::Cda::Section
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:7273) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.4.1" (CONF:10452).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.4.1"}

    # SHALL contain exactly one [1..1] code (CONF:15962).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"8716-3", :display_name=>"Vital Signs", :code_system=>"2.16.840.1.113883.6.1"}}

    # SHALL contain exactly one [1..1] title (CONF:9967).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:7275).
    constraint 'text', {:cardinality=>"1..1"}

    # SHALL contain at least one [1..*] entry (CONF:7276) such that it
    constraint 'entry', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] Vital Signs Organizer (templateId:2.16.840.1.113883.10.20.22.4.26) (CONF:15964).
    constraint 'entry.organizer', {:cardinality=>"1..1"}

    Ccd.load_extension('vital_signs_section_entries_required.rb')
  end
end
