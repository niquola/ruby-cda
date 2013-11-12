module Ccd
  class FamilyHistoryOrganizer < ::Cda::Organizer
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="CLUSTER" Cluster (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8600).
    constraint 'class_code', {:cardinality=>"1..1", :value=>{:code=>"CLUSTER", :display_name=>"Cluster", :code_system=>"2.16.840.1.113883.5.6", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:8601).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>{:code=>"EVN", :display_name=>"Event", :code_system=>"2.16.840.1.113883.5.1001", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] templateId (CONF:8604) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.45" (CONF:10497).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.45"}

    # SHALL contain exactly one [1..1] statusCode (CONF:8602).
    constraint 'status_code', {:cardinality=>"1..1", :value=>{:code=>"completed", :display_name=>"Completed", :code_system=>"2.16.840.1.113883.5.14", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] subject (CONF:8609).
    constraint 'subject', {:cardinality=>"1..1"}

    # This subject SHALL contain exactly one [1..1] relatedSubject (CONF:15244).
    constraint 'subject.related_subject', {:cardinality=>"1..1"}

    # This relatedSubject SHALL contain exactly one [1..1] @classCode="PRS" Person (CodeSystem: EntityClass 2.16.840.1.113883.5.41 STATIC) (CONF:15245).
    constraint 'subject.related_subject.class_code', {:cardinality=>"1..1", :value=>{:code=>"PRS", :display_name=>"Person", :code_system=>"2.16.840.1.113883.5.41", :_type=>"Cda::CV"}}

    # This relatedSubject SHALL contain exactly one [1..1] code (CONF:15246).
    constraint 'subject.related_subject.code', {:cardinality=>"1..1"}

    # This code SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet Family Member Value Set 2.16.840.1.113883.1.11.19579 DYNAMIC (CONF:15247).
    constraint 'subject.related_subject.code.code', {:cardinality=>"1..1"}

    # SHALL contain at least one [1..*] component (CONF:8607).
    constraint 'component', {:cardinality=>"1..*"}

    # Such components SHALL contain exactly one [1..1] Family History Observation (templateId:2.16.840.1.113883.10.20.22.4.46) (CONF:16888).
    constraint 'component.observation', {:cardinality=>"1..1"}

    Ccd.load_extension('family_history_organizer.rb')
  end
end
