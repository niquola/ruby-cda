module Ccd
  class PayersSection < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7924) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.18" (CONF:10434).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.18"}

    #SHALL contain exactly one [1..1] code (CONF:15395).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHALL contain exactly one [1..1] @code="48768-6" Payers (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15396).
    constraint 'code.code', {:cardinality=>"1..1", :value=>"48768-6"}

    #SHALL contain exactly one [1..1] title (CONF:7926).
    constraint 'title', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] text (CONF:7927).
    constraint 'text', {:cardinality=>"1..1"}

    #SHOULD contain zero or more [0..*] entry (CONF:7959) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Coverage Activity (templateId:2.16.840.1.113883.10.20.22.4.60) (CONF:15501).
    constraint 'entry.act', {:cardinality=>"1..1"}

    Ccd.load_extension('payers_section.rb')
  end
end
