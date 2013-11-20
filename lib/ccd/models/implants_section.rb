module Ccd
  class ImplantsSection < ::Cda::Section
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:8042) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.33" (CONF:10401).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.33"}

    # SHALL contain exactly one [1..1] code (CONF:15371).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"55122-6", :display_name=>"Implants", :code_system=>"2.16.840.1.113883.6.1"}}

    # SHALL contain exactly one [1..1] title (CONF:8044).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:8045).
    constraint 'text', {:cardinality=>"1..1"}

    Ccd.load_extension('implants_section.rb')
  end
end
