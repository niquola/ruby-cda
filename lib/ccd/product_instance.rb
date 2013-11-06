module Ccd
  class ProductInstance < ::Cda::ParticipantRole
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="MANU" Manufactured Product (CodeSystem: RoleClass 2.16.840.1.113883.5.110 STATIC) (CONF:7900).
    constraint 'classCode', cardinality: '1..1', value: 'MANU'

    #SHALL contain exactly one [1..1] templateId (CONF:7901) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.37" (CONF:10522).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.37'

    #SHALL contain at least one [1..*] id (CONF:7902).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] playingDevice (CONF:7903).
    constraint 'playingDevice', cardinality: '1..1'

    #This playingDevice SHOULD contain zero or one [0..1] code (CONF:16837).
    constraint 'playingDevice.code', cardinality: '0..1'

    #SHALL contain exactly one [1..1] scopingEntity (CONF:7905).
    constraint 'scopingEntity', cardinality: '1..1'

    #This scopingEntity SHALL contain at least one [1..*] id (CONF:7908).
    constraint 'scopingEntity.id', cardinality: '1..*'
  end
end
