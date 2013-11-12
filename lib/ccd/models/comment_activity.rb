module Ccd
  class CommentActivity < ::Cda::Act
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:9425).
    constraint 'class_code', {:cardinality=>"1..1", :value=>{:code=>"ACT", :display_name=>"Act", :code_system=>"2.16.840.1.113883.5.6", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:9426).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>{:code=>"EVN", :display_name=>"Event", :code_system=>"2.16.840.1.113883.5.1001", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] templateId (CONF:9427) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.64" (CONF:10491).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.64"}

    # SHALL contain exactly one [1..1] code (CONF:9428).
    constraint 'code', {:cardinality=>"1..1"}

    # This code SHALL contain exactly one [1..1] @code="48767-8" Annotation Comment (CONF:19159).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"48767-8", :display_name=>"Annotation Comment"}}

    # This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:26501).
    constraint 'code.code_system', {:cardinality=>"1..1", :value=>{:code=>"2.16.840.1.113883.6.1", :display_name=>"", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] text (CONF:9430).
    constraint 'text', {:cardinality=>"1..1"}

    # This text SHALL contain exactly one [1..1] reference (CONF:15967).
    constraint 'text.reference', {:cardinality=>"1..1"}

    # This reference SHALL contain exactly one [1..1] @value (CONF:15968).
    constraint 'text.reference.value', {:cardinality=>"1..1"}

    Ccd.load_extension('comment_activity.rb')
  end
end
