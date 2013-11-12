module Ccd
  class PlannedProcedureSection < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:8082) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.30" (CONF:10436).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.30"}

    #SHALL contain exactly one [1..1] code (CONF:15399).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHALL contain exactly one [1..1] @code="59772-4" Planned Procedure (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15400).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"59772-4", :display_name=>"Planned Procedure", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    #SHALL contain exactly one [1..1] title (CONF:8084).
    constraint 'title', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] text (CONF:8085).
    constraint 'text', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entry (CONF:8744) such that it
    constraint 'entry', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] Plan of Care Activity Procedure (templateId:2.16.840.1.113883.10.20.22.4.41) (CONF:15502).
    constraint 'entry.procedure', {:cardinality=>"1..1"}

    Ccd.load_extension('planned_procedure_section.rb')
  end
end
