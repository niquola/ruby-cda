module Ccd
  class ProceduresSectionEntriesRequired < ::Cda::Section
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] templateId (CONF:7891) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.7.1" (CONF:10447).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.7.1"}

    # SHALL contain exactly one [1..1] code (CONF:15425).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"47519-4", :display_name=>"History of Procedures", :code_system=>"2.16.840.1.113883.6.1"}}

    # SHALL contain exactly one [1..1] title (CONF:7893).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:7894).
    constraint 'text', {:cardinality=>"1..1"}

    def self.template_type
      "section"
    end

    Ccd.load_extension('procedures_section_entries_required.rb')
  end
end
