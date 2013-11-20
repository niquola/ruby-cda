module Ccd
  class Instructions < ::Cda::Act
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="ACT" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7391).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"ACT"}

    # SHALL contain exactly one [1..1] @moodCode="INT" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7392).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"INT"}

    # SHALL contain exactly one [1..1] templateId (CONF:7393) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.20" (CONF:10503).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.20"}

    # SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Patient Education 2.16.840.1.113883.11.20.9.34 DYNAMIC (CONF:16884).
    constraint 'code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] statusCode (CONF:7396).
    constraint 'status_code', {:cardinality=>"1..1", :value=>{:code=>"completed", :display_name=>"Completed", :code_system=>"2.16.840.1.113883.5.14"}}

    Ccd.load_extension('instructions.rb')
  end
end
