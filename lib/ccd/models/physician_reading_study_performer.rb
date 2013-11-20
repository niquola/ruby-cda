module Ccd
  class PhysicianReadingStudyPerformer < ::Cda::Performer1
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] @typeCode="PRF" Performer (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8424).
    constraint 'type_code', {:cardinality=>"1..1", :value=>"PRF"}

    # SHALL contain exactly one [1..1] assignedEntity (CONF:8426).
    constraint 'assigned_entity', {:cardinality=>"1..1"}

    # This assignedEntity SHALL contain at least one [1..*] id (CONF:10033).
    constraint 'assigned_entity.id', {:cardinality=>"1..*"}

    # This assignedEntity SHALL contain exactly one [1..1] code (CONF:8427).
    constraint 'assigned_entity.code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] templateId/@root="2.16.840.1.113883.10.20.6.2.1" (CONF:8423).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.6.2.1"}

    def self.template_type
      "performer"
    end

    Ccd.load_extension('physician_reading_study_performer.rb')
  end
end
