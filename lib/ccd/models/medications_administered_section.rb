module Ccd
  class MedicationsAdministeredSection < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8152) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.38" (CONF:10405).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.38"}

    #SHALL contain exactly one [1..1] code (CONF:15383).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHALL contain exactly one [1..1] @code="29549-3" Medications Administered (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15384).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"29549-3", :display_name=>"Medications Administered", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    #SHALL contain exactly one [1..1] title (CONF:8154).
    constraint 'title', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] text (CONF:8155).
    constraint 'text', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entry (CONF:8156).
    constraint 'entry', {:cardinality=>"0..*"}

    #The entry, if present, SHALL contain exactly one [1..1] Medication Activity (templateId:2.16.840.1.113883.10.20.22.4.16) (CONF:15499).
    constraint 'entry.substance_administration', {:cardinality=>"1..1"}

    Ccd.load_extension('medications_administered_section.rb')
  end
end
