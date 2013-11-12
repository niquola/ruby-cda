module Ccd
  class SocialHistorySection < ::Cda::Section
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:7936) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.17" (CONF:10449).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.17"}

    # SHALL contain exactly one [1..1] code (CONF:14819).
    constraint 'code', {:cardinality=>"1..1"}

    # This code SHALL contain exactly one [1..1] @code="29762-2" Social History (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:14820).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"29762-2", :display_name=>"Social History", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] title (CONF:7938).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:7939).
    constraint 'text', {:cardinality=>"1..1"}

    Ccd.load_extension('social_history_section.rb')
  end
end
