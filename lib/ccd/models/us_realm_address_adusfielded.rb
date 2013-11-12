module Ccd
  class USRealmAddressADUSFIELDED < ::Cda::AD
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] city (CONF:7292).
    constraint 'city', {:cardinality=>"1..1"}

    # SHALL contain at least one and not more than 4 streetAddressLine (CONF:7291).
    constraint 'street_address_line', {:cardinality=>"1..4"}

    Ccd.load_extension('us_realm_address_adusfielded.rb')
  end
end
