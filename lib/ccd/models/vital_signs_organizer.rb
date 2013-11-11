module Ccd
  class VitalSignsOrganizer < ::Cda::Organizer
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="CLUSTER" CLUSTER (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7279).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"CLUSTER"}

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7280).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}

    #SHALL contain exactly one [1..1] templateId (CONF:7281) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.26" (CONF:10528).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.26"}

    #SHALL contain at least one [1..*] id (CONF:7282).
    constraint 'id', {:cardinality=>"1..*"}

    #SHALL contain exactly one [1..1] code (CONF:19176).
    constraint 'code', {:cardinality=>"1..1"}

    #This code SHALL contain exactly one [1..1] @code="46680005" Vital signs (CodeSystem: SNOMED CT 2.16.840.1.113883.6.96 STATIC) (CONF:19177).
    constraint 'code.code', {:cardinality=>"1..1", :value=>"46680005"}

    #SHALL contain exactly one [1..1] statusCode (CONF:7284).
    constraint 'status_code', {:cardinality=>"1..1"}

    #This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:19120).
    constraint 'status_code.code', {:cardinality=>"1..1", :value=>"completed"}

    #SHALL contain exactly one [1..1] effectiveTime (CONF:7288).
    constraint 'effective_time', {:cardinality=>"1..1"}

    #SHALL contain at least one [1..*] component (CONF:7285) such that it
    constraint 'component', {:cardinality=>"1..*"}

    #SHALL contain exactly one [1..1] Vital Sign Observation (templateId:2.16.840.1.113883.10.20.22.4.27) (CONF:15946).
    constraint 'component.observation', {:cardinality=>"1..1"}

    Ccd.load_extension('vital_signs_organizer.rb')
  end
end
