module Ccd
  class ResultOrganizer < ::Cda::Organizer
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7121).
    constraint 'class_code', {:cardinality=>"1..1"}

    #	SHOULD contain zero or one [0..1] @classCode="CLUSTER" Cluster (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) OR SHOULD contain zero or one [0..1] @classCode="BATTERY" Battery (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass)
    constraint 'class_code', {}

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7122).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}

    #SHALL contain exactly one [1..1] templateId (CONF:7126) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.1" (CONF:9134).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.1"}

    #SHALL contain at least one [1..*] id (CONF:7127).
    constraint 'id', {:cardinality=>"1..*"}

    #SHALL contain exactly one [1..1] code (CONF:7128).
    constraint 'code', {:cardinality=>"1..1"}

    #SHOULD be selected from LOINC (codeSystem 2.16.840.1.113883.6.1) or SNOMED CT (codeSystem 2.16.840.1.113883.6.96), and MAY be selected from CPT-4 (codeSystem 2.16.840.1.113883.6.12)
    constraint 'code', {}

    #Laboratory results SHOULD be from LOINC (CodeSystem: 2.16.840.1.113883.6.1) or other constrained terminology named by the US Department of Health and Human Services Office of National Coordinator or other federal agency.  Local and/or regional codes for laboratory results SHOULD also be allowed.
    constraint 'code', {}

    #SHALL contain exactly one [1..1] statusCode (CONF:7123).
    constraint 'status_code', {:cardinality=>"1..1"}

    #This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Result Status 2.16.840.1.113883.11.20.9.39 STATIC (CONF:14848).
    constraint 'status_code.code', {:cardinality=>"1..1"}

    #SHALL contain at least one [1..*] component (CONF:7124) such that it
    constraint 'component', {:cardinality=>"1..*"}

    #SHALL contain exactly one [1..1] Result Observation (templateId:2.16.840.1.113883.10.20.22.4.2) (CONF:14850).
    constraint 'component.observation', {:cardinality=>"1..1"}

    Ccd.load_extension('result_organizer.rb')
  end
end
