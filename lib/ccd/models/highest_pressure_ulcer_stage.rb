module Ccd
  class HighestPressureUlcerStage < ::Cda::Observation
    extend ::Ccd::Dsl

    # SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:14726).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"OBS"}

    # SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:14727).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}

    # SHALL contain exactly one [1..1] templateId (CONF:14728) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.77" (CONF:14729).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.77"}

    # SHALL contain at least one [1..*] id (CONF:14730).
    constraint 'id', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] code (CONF:14731).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"420905001", :display_name=>"Highest Pressure Ulcer Stage", :code_system=>"2.16.840.1.113883.6.96"}}

    # SHALL contain exactly one [1..1] value (CONF:14733).
    constraint 'value', {:cardinality=>"1..1"}

    def self.template_type
      "observation"
    end

    Ccd.load_extension('highest_pressure_ulcer_stage.rb')
  end
end
