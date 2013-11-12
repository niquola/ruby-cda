module Ccd
  class BoundaryObservation < ::Cda::Observation
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:9282).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"OBS"}

    # SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:9283).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>"EVN"}

    # SHALL contain exactly one [1..1] code (CONF:9284).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"113036", :display_name=>"Frames for Display", :code_system=>"1.2.840.10008.2.16.4", :_type=>"Cda::CV"}}

    # Each number represents a frame for display.
    # SHALL contain at least one [1..*] value with @xsi:type="INT" (CONF:9285).
    constraint 'value', {:cardinality=>"1..*"}

    Ccd.load_extension('boundary_observation.rb')
  end
end
