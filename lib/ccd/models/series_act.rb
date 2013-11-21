module Ccd
  class SeriesAct < ::Cda::Act
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:9222).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"ACT"}

    # SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:9223).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}

    # SHALL contain exactly one [1..1] templateId (CONF:10918) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.63" (CONF:10919).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.63"}

    # SHALL contain at least one [1..*] id (CONF:9224).
    constraint 'id', {:cardinality=>"1..*"}

    # The @root contains the OID of the study instance UID since DICOM study ids consist only of an OID
    # Such ids SHALL contain exactly one [1..1] @root (CONF:9225).
    constraint 'id.root', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] code (CONF:19166).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"113015", :display_name=>""}}

    # This code SHALL contain exactly one [1..1] qualifier (CONF:26462).
    constraint 'code.qualifier', {:cardinality=>"1..1"}

    # This qualifier SHALL contain exactly one [1..1] name (CONF:26463).
    constraint 'code.qualifier.name', {:cardinality=>"1..1", :value=>{:code=>"121139", :display_name=>"Modality"}}

    # This name SHALL contain exactly one [1..1] @codeSystem="1.2.840.10008.2.16.4" (CodeSystem: DCM 1.2.840.10008.2.16.4) (CONF:26465).
    constraint 'code.qualifier.name.code_system', {:cardinality=>"1..1", :value=>"1.2.840.10008.2.16.4"}

    # This qualifier SHALL contain exactly one [1..1] value (CONF:26466).
    constraint 'code.qualifier.value', {:cardinality=>"1..1"}

    # SHALL contain at least one [1..*] entryRelationship (CONF:9237) such that it
    constraint 'entry_relationship', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:9238).
    constraint 'entry_relationship.type_code', {:cardinality=>"1..1", :value=>"COMP"}

    # SHALL contain exactly one [1..1] SOP Instance Observation (templateId:2.16.840.1.113883.10.20.6.2.8) (CONF:15927).
    constraint 'entry_relationship.observation', {:cardinality=>"1..1"}

    def self.template_type
      "act"
    end

    Ccd.load_extension('series_act.rb')
  end
end
