module Ccd
  class USRealmAddressADUSFIELDED < ::Cda::AD
    include Virtus.model
    extend ::Ccd::Dsl
    #SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet PostalAddressUse 2.16.840.1.113883.1.11.10637 STATIC 2005-05-01 (CONF:7290).
    constraint 'use', cardinality: '0..1'

    #SHOULD contain zero or one [0..1] country, which SHALL be selected from ValueSet Country 2.16.840.1.113883.3.88.12.80.63 DYNAMIC (CONF:7295).
    constraint 'country', cardinality: '0..1'

    #SHOULD contain zero or one [0..1] state (ValueSet: StateValueSet 2.16.840.1.113883.3.88.12.80.1 DYNAMIC) (CONF:7293).
    constraint 'state', cardinality: '0..1'

    #	State is required if the country is US. If country is not specified, it's assumed to be US. If country is something other than US, the state MAY be present but MAY be bound to different vocabularies.
    constraint 'state'

    #SHALL contain exactly one [1..1] city (CONF:7292).
    constraint 'city', cardinality: '1..1'

    #SHOULD contain zero or one [0..1] postalCode, which SHOULD be selected from ValueSet PostalCode 2.16.840.1.113883.3.88.12.80.2 DYNAMIC (CONF:7294).
    constraint 'postalCode', cardinality: '0..1'

    #PostalCode is required if the country is US. If country is not specified, it's assumed to be US. If country is something other than US, the postalCode MAY be present but MAY be bound to different vocabularies
    constraint 'postalCode'

    #SHALL contain at least one and not more than 4 streetAddressLine (CONF:7291).
    constraint 'streetAddressLine', cardinality: '1..4'

    #SHALL NOT have mixed content except for white space
    constraint ''

    Ccd.load_extension('USRealmAddressADUSFIELDED')
  end
end
