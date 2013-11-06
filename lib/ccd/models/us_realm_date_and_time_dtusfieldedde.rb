module Ccd
  class USRealmDateAndTimeDTUSFIELDEDDE < ::Cda::IVL_TS
    include Virtus.model
    extend ::Ccd::Dsl
    #	SHALL be precise to the day
    constraint '', cardinality: '1..1'

    #	SHOULD be precise to the minute
    constraint ''

    #	MAY be precise to the second
    constraint ''

    #	If more precise than day, SHOULD include time-zone offset
    constraint ''

    Ccd.load_extension('USRealmDateAndTimeDTUSFIELDEDDE')
  end
end
