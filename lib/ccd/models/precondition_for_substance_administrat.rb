module Ccd
  class PreconditionForSubstanceAdministrat < ::Cda::Criterion
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7372) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.25" (CONF:10517).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.25'

    #SHOULD contain zero or one [0..1] code (CONF:16854).
    constraint 'code', cardinality: '0..1'

    #MAY contain zero or one [0..1] text (CONF:7373).
    constraint 'text', cardinality: '0..1'

    #SHOULD contain zero or one [0..1] value with @xsi:type="CD" (CONF:7369).
    constraint 'value', cardinality: '0..1'

    Ccd.load_extension('PreconditionForSubstanceAdministrat')
  end
end
