module Ccd
  class USRealmDateAndTimeDTMUSFIELDED < ::Cda::TS
    extend ::Ccd::Dsl

    Ccd.load_extension('us_realm_date_and_time_dtmusfielded.rb')
  end
end
