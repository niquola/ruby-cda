module Ccd
  class ProceduresSectionEntriesOptional < ::Cda::Section
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:6270) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.7" (CONF:6271).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.7"}

    # SHALL contain exactly one [1..1] code (CONF:15423).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"47519-4", :display_name=>"History of Procedures", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] title (CONF:17184).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:6273).
    constraint 'text', {:cardinality=>"1..1"}

    Ccd.load_extension('procedures_section_entries_optional.rb')
  end
end
