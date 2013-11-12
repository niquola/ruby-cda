module Ccd
  class MedicationSupplyOrder < ::Cda::Supply
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="SPLY" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7427).
    constraint 'class_code', {:cardinality=>"1..1", :value=>{:code=>"SPLY", :code_system=>"2.16.840.1.113883.5.6"}}

    # SHALL contain exactly one [1..1] @moodCode="INT" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7428).
    constraint 'mood_code', {:cardinality=>"1..1", :value=>{:code=>"INT", :code_system=>"2.16.840.1.113883.5.1001"}}

    # SHALL contain exactly one [1..1] templateId (CONF:7429) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.17" (CONF:10507).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.17"}

    # SHALL contain at least one [1..*] id (CONF:7430).
    constraint 'id', {:cardinality=>"1..*"}

    # SHALL contain exactly one [1..1] statusCode (CONF:7432).
    constraint 'status_code', {:cardinality=>"1..1"}

    Ccd.load_extension('medication_supply_order.rb')
  end
end
