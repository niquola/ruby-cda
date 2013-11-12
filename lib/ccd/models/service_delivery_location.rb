module Ccd
  class ServiceDeliveryLocation < ::Cda::ParticipantRole
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="SDLOC" (CodeSystem: RoleCode 2.16.840.1.113883.5.111 STATIC) (CONF:7758).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"SDLOC"}

    # SHALL contain exactly one [1..1] templateId (CONF:7635) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.32" (CONF:10524).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.32"}

    # SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet HealthcareServiceLocation 2.16.840.1.113883.1.11.20275 STATIC (CONF:16850).
    constraint 'code', {:cardinality=>"1..1"}

    Ccd.load_extension('service_delivery_location.rb')
  end
end
