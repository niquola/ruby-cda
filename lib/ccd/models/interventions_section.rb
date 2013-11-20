module Ccd
  class InterventionsSection < ::Cda::Section
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:8680) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.21.2.3" (CONF:10461).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.21.2.3"}

    # SHALL contain exactly one [1..1] code (CONF:15377).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"62387-6", :display_name=>"Interventions Provided", :code_system=>"2.16.840.1.113883.6.1"}}

    # SHALL contain exactly one [1..1] title (CONF:8682).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:8683).
    constraint 'text', {:cardinality=>"1..1"}

    Ccd.load_extension('interventions_section.rb')
  end
end
