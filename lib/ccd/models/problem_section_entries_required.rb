module Ccd
  class ProblemSectionEntriesRequired < ::Cda::Section
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] templateId (CONF:9179) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.5.1" (CONF:10441).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.5.1"}

    # SHALL contain exactly one [1..1] code (CONF:15409).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"11450-4", :display_name=>"Problem List", :code_system=>"2.16.840.1.113883.6.1"}}

    # SHALL contain exactly one [1..1] title (CONF:9181).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:9182).
    constraint 'text', {:cardinality=>"1..1"}

    # SHALL contain at least one [1..*] entry (CONF:9183).
    constraint 'entry', {:cardinality=>"1..*"}

    # Such entries SHALL contain exactly one [1..1] Problem Concern Act (Condition) (templateId:2.16.840.1.113883.10.20.22.4.3) (CONF:15506).
    constraint 'entry.act', {:cardinality=>"1..1"}

    def self.template_type
      "section"
    end

    Ccd.load_extension('problem_section_entries_required.rb')
  end
end
