module Ccd
  class PhysicianOfRecordParticipant < ::Cda::EncounterParticipant
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] @typeCode="ATND" Attender (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:8881).
    constraint 'type_code', {:cardinality=>"1..1", :value=>"ATND"}

    # SHALL contain exactly one [1..1] assignedEntity (CONF:8886).
    constraint 'assigned_entity', {:cardinality=>"1..1"}

    # This assignedEntity SHALL contain at least one [1..*] id (CONF:8887).
    constraint 'assigned_entity.id', {:cardinality=>"1..*"}

    # This assignedEntity SHALL contain exactly one [1..1] code (CONF:8888).
    constraint 'assigned_entity.code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] templateId/@root="2.16.840.1.113883.10.20.6.2.2" (CONF:8440).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.6.2.2"}

    def self.template_type
      "encounterParticipant"
    end

    Ccd.load_extension('physician_of_record_participant.rb')
  end
end
