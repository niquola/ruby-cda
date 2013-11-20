module Ccd
  class PolicyActivity < ::Cda::Act
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8898).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"ACT"}

    # SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:8899).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}

    # SHALL contain exactly one [1..1] templateId (CONF:8900) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.61" (CONF:10516).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.61"}

    # This id is a unique identifier for the policy or program providing the coverage
    # SHALL contain at least one [1..*] id (CONF:8901).
    constraint 'id', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] code (CONF:8903).
    constraint 'code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] statusCode (CONF:8902).
    constraint 'status_code', {:cardinality=>"1..1", :value=>{:code=>"completed", :display_name=>"Completed", :code_system=>"2.16.840.1.113883.5.14"}}

    # This performer represents the Payer.
    # SHALL contain exactly one [1..1] performer (CONF:8906) such that it
    constraint 'performer', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @typeCode="PRF" Performer (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:8907).
    constraint 'performer.type_code', {:cardinality=>"1..1", :value=>"PRF"}

    # SHALL contain exactly one [1..1] templateId (CONF:16808).
    constraint 'performer.template_id', {:cardinality=>"1..1"}

    # This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.87" Payer Performer (CONF:16809).
    constraint 'performer.template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.87"}

    # SHALL contain exactly one [1..1] assignedEntity (CONF:8908).
    constraint 'performer.assigned_entity', {:cardinality=>"1..1"}

    # This assignedEntity SHALL contain at least one [1..*] id (CONF:8909).
    constraint 'performer.assigned_entity.id', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] participant (CONF:8916) such that it
    constraint 'participant', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @typeCode="COV" Coverage target (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:8917).
    constraint 'participant.type_code', {:cardinality=>"1..1", :value=>"COV"}

    # SHALL contain exactly one [1..1] templateId (CONF:16812).
    constraint 'participant.template_id', {:cardinality=>"1..1"}

    # This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.89" Covered Party Participant (CONF:16814).
    constraint 'participant.template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.89"}

    # SHALL contain exactly one [1..1] participantRole (CONF:8921).
    constraint 'participant.participant_role', {:cardinality=>"1..1"}

    # This participantRole SHALL contain at least one [1..*] id (CONF:8922).
    constraint 'participant.participant_role.id', {:cardinality=>"1..*"}

    # This participantRole SHALL contain exactly one [1..1] code (CONF:8923).
    constraint 'participant.participant_role.code', {:cardinality=>"1..1"}

    # SHALL contain at least one [1..*] entryRelationship (CONF:8939) such that it
    constraint 'entry_relationship', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] @typeCode="REFR" Refers to (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8940).
    constraint 'entry_relationship.type_code', {:cardinality=>"1..1", :value=>"REFR"}

    Ccd.load_extension('policy_activity.rb')
  end
end
