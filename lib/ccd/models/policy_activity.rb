module Ccd
  class PolicyActivity < ::Cda::Act
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8898).
    constraint 'class_code', cardinality: '1..1', value: 'ACT'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:8899).
    constraint 'mood_code', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:8900) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.61" (CONF:10516).
    constraint 'template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.61'

    #SHALL contain at least one [1..*] id (CONF:8901).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] code (CONF:8903).
    constraint 'code', cardinality: '1..1'

    #This code SHOULD contain zero or one [0..1] @code, which SHOULD be selected from ValueSet Health Insurance Type 2.16.840.1.113883.3.88.12.3221.5.2 DYNAMIC (CONF:19185).
    constraint 'code.code', cardinality: '0..1'

    #SHALL contain exactly one [1..1] statusCode (CONF:8902).
    constraint 'status_code', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19109).
    constraint 'status_code.code', cardinality: '1..1', value: 'completed'

    #SHALL contain exactly one [1..1] performer (CONF:8906) such that it
    constraint 'performer', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @typeCode="PRF" Performer (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:8907).
    constraint 'performer.type_code', cardinality: '1..1', value: 'PRF'

    #SHALL contain exactly one [1..1] templateId (CONF:16808).
    constraint 'performer.template_id', cardinality: '1..1'

    #This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.87" Payer Performer (CONF:16809).
    constraint 'performer.template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.87'

    #SHALL contain exactly one [1..1] assignedEntity (CONF:8908).
    constraint 'performer.assigned_entity', cardinality: '1..1'

    #This assignedEntity SHALL contain at least one [1..*] id (CONF:8909).
    constraint 'performer.assigned_entity.id', cardinality: '1..*'

    #This assignedEntity SHOULD contain zero or one [0..1] code (CONF:8914).
    constraint 'performer.assigned_entity.code', cardinality: '0..1'

    #The code, if present, SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet HL7FinanciallyResponsiblePartyType 2.16.840.1.113883.1.11.10416 DYNAMIC (CONF:15992).
    constraint 'performer.assigned_entity.code.code', cardinality: '1..1'

    #This assignedEntity MAY contain zero or one [0..1] addr (CONF:8910).
    constraint 'performer.assigned_entity.addr', cardinality: '0..1'

    #The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2)
    constraint 'performer.assigned_entity.addr'

    #This assignedEntity MAY contain zero or one [0..1] telecom (CONF:8911).
    constraint 'performer.assigned_entity.telecom', cardinality: '0..1'

    #This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:8912).
    constraint 'performer.assigned_entity.represented_organization', cardinality: '0..1'

    #The representedOrganization, if present, SHOULD contain zero or one [0..1] name (CONF:8913).
    constraint 'performer.assigned_entity.represented_organization.name', cardinality: '0..1'

    #SHOULD contain zero or one [0..1] performer="PRF" Performer (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:8961) such that it
    constraint 'performer', cardinality: '0..1', value: 'PRF'

    #SHALL contain exactly one [1..1] templateId (CONF:16810).
    constraint 'performer.template_id', cardinality: '1..1'

    #This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.88" Guarantor Performer (CONF:16811).
    constraint 'performer.template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.88'

    #SHOULD contain zero or one [0..1] time (CONF:8963).
    constraint 'performer.time', cardinality: '0..1'

    #SHALL contain exactly one [1..1] assignedEntity (CONF:8962).
    constraint 'performer.assigned_entity', cardinality: '1..1'

    #This assignedEntity SHALL contain exactly one [1..1] code (CONF:8968).
    constraint 'performer.assigned_entity.code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="GUAR" Guarantor (CodeSystem: RoleClass 2.16.840.1.113883.5.110 STATIC) (CONF:16096).
    constraint 'performer.assigned_entity.code.code', cardinality: '1..1', value: 'GUAR'

    #This assignedEntity SHOULD contain zero or one [0..1] addr (CONF:8964).
    constraint 'performer.assigned_entity.addr', cardinality: '0..1'

    #The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2)
    constraint 'performer.assigned_entity.addr'

    #This assignedEntity SHOULD contain zero or one [0..1] telecom (CONF:8965).
    constraint 'performer.assigned_entity.telecom', cardinality: '0..1'

    #SHOULD include assignedEntity/assignedPerson/name AND/OR assignedEntity/representedOrganization/name
    constraint 'performer.assigned_entity'

    #SHALL contain exactly one [1..1] participant (CONF:8916) such that it
    constraint 'participant', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @typeCode="COV" Coverage target (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:8917).
    constraint 'participant.type_code', cardinality: '1..1', value: 'COV'

    #SHALL contain exactly one [1..1] templateId (CONF:16812).
    constraint 'participant.template_id', cardinality: '1..1'

    #This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.89" Covered Party Participant (CONF:16814).
    constraint 'participant.template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.89'

    #SHOULD contain zero or one [0..1] time (CONF:8918).
    constraint 'participant.time', cardinality: '0..1'

    #The time, if present, SHOULD contain zero or one [0..1] low (CONF:8919).
    constraint 'participant.time.low', cardinality: '0..1'

    #The time, if present, SHOULD contain zero or one [0..1] high (CONF:8920).
    constraint 'participant.time.high', cardinality: '0..1'

    #SHALL contain exactly one [1..1] participantRole (CONF:8921).
    constraint 'participant.participant_role', cardinality: '1..1'

    #This participantRole SHALL contain at least one [1..*] id (CONF:8922).
    constraint 'participant.participant_role.id', cardinality: '1..*'

    #	This id is a unique identifier for  the covered party member. Implementers SHOULD use the same GUID for each instance of a member identifier from the same health plan
    constraint 'participant.participant_role.id'

    #This participantRole SHALL contain exactly one [1..1] code (CONF:8923).
    constraint 'participant.participant_role.code', cardinality: '1..1'

    #This code SHOULD contain zero or one [0..1] @code, which SHOULD be selected from ValueSet Coverage Role Type 2.16.840.1.113883.1.11.18877 DYNAMIC (CONF:16078).
    constraint 'participant.participant_role.code.code', cardinality: '0..1'

    #This participantRole SHOULD contain zero or one [0..1] addr (CONF:8956).
    constraint 'participant.participant_role.addr', cardinality: '0..1'

    #The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2)
    constraint 'participant.participant_role.addr'

    #This participantRole SHOULD contain zero or one [0..1] playingEntity (CONF:8932).
    constraint 'participant.participant_role.playing_entity', cardinality: '0..1'

    #The playingEntity, if present, SHALL contain exactly one [1..1] name (CONF:8930).
    constraint 'participant.participant_role.playing_entity.name', cardinality: '1..1'

    #If the member date of birth as recorded by the health plan differs from the patient date of birth as recorded in the registration/medication summary, then the member date of birth SHALL be recorded in sdtc:birthTime. The prefix sdtc: SHALL be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the birthTime element.
    constraint 'participant.participant_role.playing_entity'

    #SHOULD contain zero or one [0..1] participant (CONF:8934) such that it
    constraint 'participant', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="HLD" Holder (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:8935).
    constraint 'participant.type_code', cardinality: '1..1', value: 'HLD'

    #SHALL contain exactly one [1..1] templateId (CONF:16813).
    constraint 'participant.template_id', cardinality: '1..1'

    #This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.90" Policy Holder Participant (CONF:16815).
    constraint 'participant.template_id.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.90'

    #MAY contain zero or one [0..1] time (CONF:8938).
    constraint 'participant.time', cardinality: '0..1'

    #SHALL contain exactly one [1..1] participantRole (CONF:8936).
    constraint 'participant.participant_role', cardinality: '1..1'

    #This participantRole SHALL contain at least one [1..*] id (CONF:8937).
    constraint 'participant.participant_role.id', cardinality: '1..*'

    #	This id is a unique identifier for the subscriber of the coverage
    constraint 'participant.participant_role.id'

    #This participantRole SHOULD contain zero or one [0..1] addr (CONF:8925).
    constraint 'participant.participant_role.addr', cardinality: '0..1'

    #The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2)
    constraint 'participant.participant_role.addr'

    #When the Subscriber is the patient, the participant element describing the subscriber SHALL NOT be present. This information will be recorded instead in the data elements used to record member information
    constraint 'participant'

    #SHALL contain at least one [1..*] entryRelationship (CONF:8939) such that it
    constraint 'entry_relationship', cardinality: '1..*'

    #SHALL contain exactly one [1..1] @typeCode="REFR" Refers to (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8940).
    constraint 'entry_relationship.type_code', cardinality: '1..1', value: 'REFR'

    #The target of a policy activity with act/entryRelationship/@typeCode="REFR" SHALL be an authorization activity (templateId 2.16.840.1.113883.10.20.1.19) OR an act, with act[@classCode="ACT"] and act[@moodCode="DEF"], representing a description of the coverage plan
    constraint 'entry_relationship'

    #A description of the coverage plan SHALL contain one or more act/id, to represent the plan identifier, and an act/text with the name of the plan
    constraint 'entry_relationship'

    Ccd.load_extension('policy_activity.rb')
  end
end
