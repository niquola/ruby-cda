module Ccd
  class ProcedureFindingsSection < ::Cda::Section
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:8078) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.28" (CONF:10443).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.28"}

    # SHALL contain exactly one [1..1] code (CONF:15417).
    constraint 'code', {:cardinality=>"1..1"}

    # This code SHALL contain exactly one [1..1] @code="59776-5" Procedure Findings (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15418).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"59776-5", :display_name=>"Procedure Findings", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] title (CONF:8080).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:8081).
    constraint 'text', {:cardinality=>"1..1"}

    Ccd.load_extension('procedure_findings_section.rb')
  end
end
