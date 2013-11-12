module Ccd
  class USRealmDateAndTimeDTUSFIELDEDDE < ::Cda::IVL_TS
    extend ::Ccd::Dsl
    # 	SHALL be precise to the day
    constraint '', {:cardinality=>"1..1"}

    Ccd.load_extension('us_realm_date_and_time_dtusfieldedde.rb')
  end
end
