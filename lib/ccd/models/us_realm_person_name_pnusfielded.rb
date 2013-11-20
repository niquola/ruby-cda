module Ccd
  class USRealmPersonNamePNUSFIELDED < ::Cda::PN
    extend ::Ccd::Dsl

    Ccd.load_extension('us_realm_person_name_pnusfielded.rb')
  end
end
