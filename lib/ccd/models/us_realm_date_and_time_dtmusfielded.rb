module Ccd
  class USRealmDateAndTimeDTMUSFIELDED < ::Cda::TS
    extend ::Ccd::Dsl
    #	SHALL be precise to the day
    constraint '', cardinality: '1..1'

    #	SHOULD be precise to the minute
    constraint ''

    #	MAY be precise to the second
    constraint ''

    #	If more precise than day, SHOULD include time-zone offset
    constraint ''

    Ccd.load_extension('us_realm_date_and_time_dtmusfielded.rb')
  end
end
