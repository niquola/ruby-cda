module Ccd
  class MedicationsSectionEntriesOptional < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7791) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.1" (CONF:10432).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.1"}

    #SHALL contain exactly one [1..1] code (CONF:15385).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHALL contain exactly one [1..1] @code="10160-0" History of medication use (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15386).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"10160-0", :display_name=>"History of medication use", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    #SHALL contain exactly one [1..1] title (CONF:7793).
    constraint 'title', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] text (CONF:7794).
    constraint 'text', {:cardinality=>"1..1"}

    #SHOULD contain zero or more [0..*] entry (CONF:7795) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Medication Activity (templateId:2.16.840.1.113883.10.20.22.4.16) (CONF:15984).
    constraint 'entry.substance_administration', {:cardinality=>"1..1"}

    #If medication use is unknown, the appropriate nullFlavor MAY be present (see unknown information in Section 1)
    constraint 'entry.null_flavor', {:cardinality=>"0..1"}

    Ccd.load_extension('medications_section_entries_optional.rb')
  end
end
