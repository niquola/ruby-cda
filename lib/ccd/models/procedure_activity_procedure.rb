module Ccd
  class ProcedureActivityProcedure < ::Cda::Procedure
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="PROC" Procedure (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7652).
    constraint 'class_code', {:cardinality=>"1..1", :value=>{:code=>"PROC", :display_name=>"Procedure", :code_system=>"2.16.840.1.113883.5.6", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet MoodCodeEvnInt 2.16.840.1.113883.11.20.9.18 STATIC 2011-04-03 (CONF:7653).
    constraint 'mood_code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] templateId (CONF:7654) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.14" (CONF:10521).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.14"}

    # SHALL contain at least one [1..*] id (CONF:7655).
    constraint 'id', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] code (CONF:7656).
    constraint 'code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] statusCode, which SHALL be selected from ValueSet ProcedureAct statusCode 2.16.840.1.113883.11.20.9.22 DYNAMIC (CONF:7661).
    constraint 'status_code', {:cardinality=>"1..1"}

    Ccd.load_extension('procedure_activity_procedure.rb')
  end
end
