module Ccd
  class SurgicalDrainsSection < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8038) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.7.13" (CONF:10473).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.7.13"}

    #SHALL contain exactly one [1..1] code (CONF:15441).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHALL contain exactly one [1..1] @code="11537-8" Surgical Drains (CONF:15442).
    constraint 'code.code', {:cardinality=>"1..1", :value=>"11537-8"}

    #This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26498).
    constraint 'code.code_system', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.6.1"}

    #SHALL contain exactly one [1..1] title (CONF:8040).
    constraint 'title', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] text (CONF:8041).
    constraint 'text', {:cardinality=>"1..1"}

    #   If the Surgical Drains section is present, there SHALL be a statement providing details of the drains placed or SHALL explicitly state there were no drains placed.
    constraint '', {}

    Ccd.load_extension('surgical_drains_section.rb')
  end
end
