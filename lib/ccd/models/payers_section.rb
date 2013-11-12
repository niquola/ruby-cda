module Ccd
  class PayersSection < ::Cda::Section
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:7924) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.18" (CONF:10434).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.18"}

    # SHALL contain exactly one [1..1] code (CONF:15395).
    constraint 'code', {:cardinality=>"1..1"}

    # This code SHALL contain exactly one [1..1] @code="48768-6" Payers (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15396).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"48768-6", :display_name=>"Payers", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] title (CONF:7926).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:7927).
    constraint 'text', {:cardinality=>"1..1"}

    Ccd.load_extension('payers_section.rb')
  end
end
