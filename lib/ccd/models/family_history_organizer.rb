module Ccd
  class FamilyHistoryOrganizer < ::Cda::Organizer
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="CLUSTER" Cluster (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8600).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"CLUSTER"}

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:8601).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}

    #SHALL contain exactly one [1..1] templateId (CONF:8604) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.45" (CONF:10497).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.45"}

    #SHALL contain exactly one [1..1] statusCode (CONF:8602).
    constraint 'status_code', {:cardinality=>"1..1"}

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19099).
    constraint 'status_code.code', {:cardinality=>"1..1", :value=>"completed"}

    #SHALL contain exactly one [1..1] subject (CONF:8609).
    constraint 'subject', {:cardinality=>"1..1"}

    #This subject SHALL contain exactly one [1..1] relatedSubject (CONF:15244).
    constraint 'subject.related_subject', {:cardinality=>"1..1"}

    #This relatedSubject SHALL contain exactly one [1..1] @classCode="PRS" Person (CodeSystem: EntityClass 2.16.840.1.113883.5.41 STATIC) (CONF:15245).
    constraint 'subject.related_subject.class_code', {:cardinality=>"1..1", :value=>"PRS"}

    #This relatedSubject SHALL contain exactly one [1..1] code (CONF:15246).
    constraint 'subject.related_subject.code', {:cardinality=>"1..1"}

    #This code SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet Family Member Value Set 2.16.840.1.113883.1.11.19579 DYNAMIC (CONF:15247).
    constraint 'subject.related_subject.code.code', {:cardinality=>"1..1"}

    #This relatedSubject SHOULD contain zero or one [0..1] subject (CONF:15248).
    constraint 'subject.related_subject.subject', {:cardinality=>"0..1"}

    #The subject, if present, SHALL contain exactly one [1..1] administrativeGenderCode (CONF:15974).
    constraint 'subject.related_subject.subject.administrative_gender_code', {:cardinality=>"1..1"}

    #This administrativeGenderCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Administrative Gender (HL7 V3) 2.16.840.1.113883.1.11.1 STATIC (CONF:15975).
    constraint 'subject.related_subject.subject.administrative_gender_code.code', {:cardinality=>"1..1"}

    #The subject, if present, SHOULD contain zero or one [0..1] birthTime (CONF:15976).
    constraint 'subject.related_subject.subject.birth_time', {:cardinality=>"0..1"}

    #The subject SHOULD contain zero or more [0..*] sdtc:id. The prefix sdtc: SHALL be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the id element
    constraint 'subject.related_subject.subject', {}

    #The subject MAY contain zero or one sdtc:deceasedInd. The prefix sdtc: SHALL be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the deceasedInd element
    constraint 'subject.related_subject.subject', {}

    #The subject MAY contain zero or one sdtc:deceasedTime. The prefix sdtc: SHALL be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the deceasedTime element
    constraint 'subject.related_subject.subject', {}

    #The age of a relative at the time of a family history observation SHOULD be inferred by comparing RelatedSubject/subject/birthTime with Observation/effectiveTime
    constraint 'subject.related_subject.subject', {}

    #SHALL contain at least one [1..*] component (CONF:8607).
    constraint 'component', {:cardinality=>"1..*"}

    #Such components SHALL contain exactly one [1..1] Family History Observation (templateId:2.16.840.1.113883.10.20.22.4.46) (CONF:16888).
    constraint 'component.observation', {:cardinality=>"1..1"}

    Ccd.load_extension('family_history_organizer.rb')
  end
end
