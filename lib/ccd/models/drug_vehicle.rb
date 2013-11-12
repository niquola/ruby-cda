module Ccd
  class DrugVehicle < ::Cda::ParticipantRole
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] @classCode="MANU" (CodeSystem: RoleClass 2.16.840.1.113883.5.110 STATIC) (CONF:7490).
    constraint 'class_code', {:cardinality=>"1..1", :value=>"MANU"}

    # SHALL contain exactly one [1..1] templateId (CONF:7495) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.24" (CONF:10493).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.4.24"}

    # SHALL contain exactly one [1..1] code (CONF:19137).
    constraint 'code', {:cardinality=>"1..1"}

    # This code SHALL contain exactly one [1..1] @code="412307009" Drug Vehicle (CONF:19138).
    constraint 'code.code', {:cardinality=>"1..1", :value=>{:code=>"412307009", :display_name=>"Drug Vehicle"}}

    # This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT 2.16.840.1.113883.6.96) (CONF:26502).
    constraint 'code.code_system', {:cardinality=>"1..1", :value=>{:code=>"2.16.840.1.113883.6.96", :display_name=>"", :code_system=>"2.16.840.1.113883.6.96", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] playingEntity (CONF:7492).
    constraint 'playing_entity', {:cardinality=>"1..1"}

    # This playingEntity/code is used to supply a coded term for the drug vehicle.
    # This playingEntity SHALL contain exactly one [1..1] code (CONF:7493).
    constraint 'playing_entity.code', {:cardinality=>"1..1"}

    Ccd.load_extension('drug_vehicle.rb')
  end
end
