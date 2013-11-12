module Ccd
  class ProcedureNote < ::Cda::ClinicalDocument
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:8496) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.1.6" (CONF:10050).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.1.6"}

    # SHALL contain exactly one [1..1] code (CONF:17182).
    constraint 'code', {:cardinality=>"1..1"}

    # This code SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ProcedureNoteDocumentTypeCodes 2.16.840.1.113883.11.20.6.1 DYNAMIC (CONF:17183).
    constraint 'code.code', {:cardinality=>"1..1"}

    # SHALL contain at least one [1..*] documentationOf (CONF:8510) such that it
    constraint 'documentation_of', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] serviceEvent (CONF:10061).
    constraint 'documentation_of.service_event', {:cardinality=>"1..1"}

    # This serviceEvent SHALL contain exactly one [1..1] effectiveTime (CONF:10062).
    constraint 'documentation_of.service_event.effective_time', {:cardinality=>"1..1"}

    # This effectiveTime SHALL contain exactly one [1..1] low (CONF:26449).
    constraint 'documentation_of.service_event.effective_time.low', {:cardinality=>"1..1"}

    # This serviceEvent SHALL contain exactly one [1..1] performer (CONF:8520).
    constraint 'documentation_of.service_event.performer', {:cardinality=>"1..1"}

    # This performer SHALL contain exactly one [1..1] @typeCode="PPRF" Primary Performer (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:8521).
    constraint 'documentation_of.service_event.performer.type_code', {:cardinality=>"1..1", :value=>{:code=>"PPRF", :display_name=>"Primary Performer", :code_system=>"2.16.840.1.113883.5.90", :_type=>"Cda::CV"}}

    # This performer SHALL contain exactly one [1..1] assignedEntity (CONF:14911).
    constraint 'documentation_of.service_event.performer.assigned_entity', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] component (CONF:9588).
    constraint 'component', {:cardinality=>"1..1"}

    Ccd.load_extension('procedure_note.rb')
  end
end
