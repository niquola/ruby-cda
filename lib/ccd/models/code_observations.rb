module Ccd
  class CodeObservations < ::Cda::Observation
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:9304).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"OBS"}

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:9305).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}

    #SHALL contain exactly one [1..1] templateId (CONF:15523).
    constraint 'template_id', {:cardinality=>"1..1"}

    #This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.6.2.13" (CONF:15524).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.6.2.13"}

    #SHALL contain exactly one [1..1] code (CONF:19181).
    constraint 'code', {:cardinality=>"1..1"}

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:9309).
    constraint 'effective_time', {:cardinality=>"0..1"}

    #SHALL contain exactly one [1..1] value (CONF:9308).
    constraint 'value', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entryRelationship (CONF:9311) such that it
    constraint 'entry_relationship', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] @typeCode="SPRT" Has Support (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:9312).
    constraint 'entry_relationship.type_code', {:cardinality=>"1..1", :value=>"SPRT"}

    #SHALL contain exactly one [1..1] SOP Instance Observation (templateId:2.16.840.1.113883.10.20.6.2.8) (CONF:16083).
    constraint 'entry_relationship.observation', {:cardinality=>"1..1"}

    #MAY contain zero or more [0..*] entryRelationship (CONF:9314) such that it
    constraint 'entry_relationship', {:cardinality=>"0..*"}

    #SHALL contain exactly one [1..1] @typeCode="SPRT" Has Support (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:9315).
    constraint 'entry_relationship.type_code', {:cardinality=>"1..1", :value=>"SPRT"}

    #SHALL contain exactly one [1..1] Quantity Measurement Observation (templateId:2.16.840.1.113883.10.20.6.2.14) (CONF:16084).
    constraint 'entry_relationship.observation', {:cardinality=>"1..1"}

    #Code Observations SHALL be rendered into section/text in separate paragraphs
    constraint '', {}

    Ccd.load_extension('code_observations.rb')
  end
end
