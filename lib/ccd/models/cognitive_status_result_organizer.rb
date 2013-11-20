module Ccd
  class CognitiveStatusResultOrganizer < ::Cda::Organizer
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="CLUSTER", which SHALL be selected from CodeSystem HL7ActClass (2.16.840.1.113883.5.6) STATIC (CONF:14369).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"CLUSTER"}

    # SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:14371).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}

    # SHALL contain exactly one [1..1] templateId (CONF:14375) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.75" (CONF:14376).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.75"}

    # SHALL contain at least one [1..*] id (CONF:14377).
    constraint 'id', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] code (CONF:14378).
    constraint 'code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] statusCode (CONF:14372).
    constraint 'status_code', {:cardinality=>"1..1", :value=>{:code=>"completed", :display_name=>"Completed", :code_system=>"2.16.840.1.113883.5.14"}}

    # SHALL contain at least one [1..*] component (CONF:14373) such that it
    constraint 'component', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] Cognitive Status Result Observation (templateId:2.16.840.1.113883.10.20.22.4.74) (CONF:14381).
    constraint 'component.observation', {:cardinality=>"1..1"}

    Ccd.load_extension('cognitive_status_result_organizer.rb')
  end
end
