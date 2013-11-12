module Ccd
  class AllergyProblemAct < ::Cda::Act
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="ACT" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7469).
    constraint 'class_code', {:cardinality=>"1..1", :value=>{:code=>"ACT", :code_system=>"2.16.840.1.113883.5.6"}}

    # SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7470).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>{:code=>"EVN", :display_name=>"Event", :code_system=>"2.16.840.1.113883.5.1001", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] templateId (CONF:7471) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.30" (CONF:10489).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.30"}

    # SHALL contain at least one [1..*] id (CONF:7472).
    constraint 'id', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] code (CONF:7477).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"48765-2", :display_name=>"Allergies, adverse reactions, alerts", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] statusCode (CONF:7485).
    constraint 'status_code', {:cardinality=>"1..1"}

    # This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ProblemAct statusCode 2.16.840.1.113883.11.20.9.19 STATIC 2011-09-09 (CONF:19086).
    constraint 'status_code.code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] effectiveTime (CONF:7498).
    constraint 'effective_time', {:cardinality=>"1..1"}

    # SHALL contain at least one [1..*] entryRelationship (CONF:7509) such that it
    constraint 'entry_relationship', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] @typeCode="SUBJ" Has subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7915).
    constraint 'entry_relationship.type_code', {:cardinality=>"1..1", :value=>{:code=>"SUBJ", :display_name=>"Has subject", :code_system=>"2.16.840.1.113883.5.1002", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] Allergy - Intolerance Observation (templateId:2.16.840.1.113883.10.20.22.4.7) (CONF:14925).
    constraint 'entry_relationship.observation', {:cardinality=>"1..1"}

    Ccd.load_extension('allergy_problem_act.rb')
  end
end
