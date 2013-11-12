module Ccd
  class OperativeNoteFluidsSection < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8030) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.7.12" (CONF:10463).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.7.12"}

    #SHALL contain exactly one [1..1] code (CONF:15391).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHALL contain exactly one [1..1] @code="10216-0" Operative Note Fluids (CONF:15392).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"10216-0", :display_name=>"Operative Note Fluids"}}

    #This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26486).
    constraint 'code.code_system', {:cardinality=>"1..1", :value=>{:code=>"2.16.840.1.113883.6.1", :display_name=>"", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    #SHALL contain exactly one [1..1] title (CONF:8032).
    constraint 'title', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] text (CONF:8033).
    constraint 'text', {:cardinality=>"1..1"}

    #  If the Operative Note Fluids section is present, there SHALL be a statement providing details of the fluids administered or SHALL explicitly state there were no fluids administered.
    constraint '', {}

    Ccd.load_extension('operative_note_fluids_section.rb')
  end
end
