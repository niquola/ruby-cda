module Ccd
  class ServiceDeliveryLocation < ::Cda::ParticipantRole
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="SDLOC" (CodeSystem: RoleCode 2.16.840.1.113883.5.111 STATIC) (CONF:7758).
    constraint 'classCode', cardinality: '1..1', value: 'SDLOC'

    #SHALL contain exactly one [1..1] templateId (CONF:7635) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.32" (CONF:10524).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.32'

    #SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet HealthcareServiceLocation 2.16.840.1.113883.1.11.20275 STATIC (CONF:16850).
    constraint 'code', cardinality: '1..1'

    #SHOULD contain zero or more [0..*] addr (CONF:7760).
    constraint 'addr', cardinality: '0..*'

    #SHOULD contain zero or more [0..*] telecom (CONF:7761).
    constraint 'telecom', cardinality: '0..*'

    #MAY contain zero or one [0..1] playingEntity (CONF:7762).
    constraint 'playingEntity', cardinality: '0..1'

    #The playingEntity, if present, SHALL contain exactly one [1..1] @classCode="PLC" (CodeSystem: EntityClass 2.16.840.1.113883.5.41 STATIC) (CONF:7763).
    constraint 'playingEntity.classCode', cardinality: '1..1', value: 'PLC'

    #The playingEntity, if present, MAY contain zero or one [0..1] name (CONF:16037).
    constraint 'playingEntity.name', cardinality: '0..1'
  end
end
