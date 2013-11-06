module Ccd
  class MedicalEquipmentSection < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7944) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.23" (CONF:10404).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.23'

    #SHALL contain exactly one [1..1] code (CONF:15381).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="46264-8" Medical Equipment (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15382).
    constraint 'code.code', cardinality: '1..1', value: '46264-8'

    #SHALL contain exactly one [1..1] title (CONF:7946).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:7947).
    constraint 'text', cardinality: '1..1'

    #SHOULD contain zero or more [0..*] entry (CONF:7948) such that it
    constraint 'entry', cardinality: '0..*'

    #SHALL contain exactly one [1..1] Non-Medicinal Supply Activity (templateId:2.16.840.1.113883.10.20.22.4.50) (CONF:15497).
    constraint 'entry.supply', cardinality: '1..1'

    Ccd.load_extension('medical_equipment_section.rb')
  end
end
