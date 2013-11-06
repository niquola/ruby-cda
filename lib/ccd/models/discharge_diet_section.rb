module Ccd
  class DischargeDietSection < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7975) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="1.3.6.1.4.1.19376.1.5.3.1.3.33" (CONF:10455).
    constraint 'templateId.root', cardinality: '1..1', value: '1.3.6.1.4.1.19376.1.5.3.1.3.33'

    #SHALL contain exactly one [1..1] code (CONF:15459).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="42344-2" Discharge Diet (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15460).
    constraint 'code.code', cardinality: '1..1', value: '42344-2'

    #SHALL contain exactly one [1..1] title (CONF:7977).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:7978).
    constraint 'text', cardinality: '1..1'

    Ccd.load_extension('discharge_diet_section.rb')
  end
end
