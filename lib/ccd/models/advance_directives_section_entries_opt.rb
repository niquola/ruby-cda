module Ccd
  class AdvanceDirectivesSectionEntriesOpt < ::Cda::Section
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] templateId (CONF:7928) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.21" (CONF:10376).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.21"}

    # SHALL contain exactly one [1..1] code (CONF:15340).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"42348-3", :display_name=>"Advance Directives", :code_system=>"2.16.840.1.113883.6.1"}}

    # SHALL contain exactly one [1..1] title (CONF:7930).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:7931).
    constraint 'text', {:cardinality=>"1..1"}

    def self.template_type
      "section"
    end

    Ccd.load_extension('advance_directives_section_entries_opt.rb')
  end
end
