module Ccd
  class DrugVehicle < ::Cda::ParticipantRole
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="MANU" (CodeSystem: RoleClass 2.16.840.1.113883.5.110 STATIC) (CONF:7490).
    constraint 'classCode', cardinality: '1..1', value: 'MANU'

    #SHALL contain exactly one [1..1] templateId (CONF:7495) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.24" (CONF:10493).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.24'

    #SHALL contain exactly one [1..1] code (CONF:19137).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="412307009" Drug Vehicle (CONF:19138).
    constraint 'code.code', cardinality: '1..1', value: '412307009'

    #This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT 2.16.840.1.113883.6.96) (CONF:26502).
    constraint 'code.codeSystem', cardinality: '1..1', value: '2.16.840.1.113883.6.96'

    #SHALL contain exactly one [1..1] playingEntity (CONF:7492).
    constraint 'playingEntity', cardinality: '1..1'

    #This playingEntity SHALL contain exactly one [1..1] code (CONF:7493).
    constraint 'playingEntity.code', cardinality: '1..1'

    #This playingEntity MAY contain zero or one [0..1] name (CONF:7494).
    constraint 'playingEntity.name', cardinality: '0..1'

    #	This playingEntity/name MAY be used for the vehicle name in text, such as Normal Saline
    constraint 'playingEntity.name'

    Ccd.load_extension('drug_vehicle.rb')
  end
end
