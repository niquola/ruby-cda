module Ccd
  class OperativeNote < ::Cda::ClinicalDocument
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:8483) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.1.7" (CONF:10048).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.1.7"}

    # SHALL contain exactly one [1..1] code (CONF:17187).
    constraint 'code', {:cardinality=>"1..1"}

    # This code SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet SurgicalOperationNoteDocumentTypeCode 2.16.840.1.113883.11.20.1.1 DYNAMIC (CONF:17188).
    constraint 'code.code', {:cardinality=>"1..1"}

    # SHALL contain at least one [1..*] documentationOf (CONF:8486).
    constraint 'documentation_of', {:cardinality=>"1..*"}

    # Such documentationOfs SHALL contain exactly one [1..1] serviceEvent (CONF:8493).
    constraint 'documentation_of.service_event', {:cardinality=>"1..1"}

    # This serviceEvent SHALL contain exactly one [1..1] effectiveTime (CONF:8494).
    constraint 'documentation_of.service_event.effective_time', {:cardinality=>"1..1"}

    # This serviceEvent SHALL contain exactly one [1..1] performer (CONF:8489) such that it
    constraint 'documentation_of.service_event.performer', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @typeCode="PPRF" Primary performer (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:8495).
    constraint 'documentation_of.service_event.performer.type_code', {:cardinality=>"1..1", :value=>"PPRF"}

    # SHALL contain exactly one [1..1] assignedEntity (CONF:10917).
    constraint 'documentation_of.service_event.performer.assigned_entity', {:cardinality=>"1..1"}

    # This assignedEntity SHALL contain exactly one [1..1] code (CONF:8490).
    constraint 'documentation_of.service_event.performer.assigned_entity.code', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] component (CONF:9585).
    constraint 'component', {:cardinality=>"1..1"}

    Ccd.load_extension('operative_note.rb')
  end
end
