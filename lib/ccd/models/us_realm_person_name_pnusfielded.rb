module Ccd
  class USRealmPersonNamePNUSFIELDED < ::Cda::PN
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] name (CONF:9368).
    constraint 'name', {:cardinality=>"1..1"}

    Ccd.load_extension('us_realm_person_name_pnusfielded.rb')
  end
end
