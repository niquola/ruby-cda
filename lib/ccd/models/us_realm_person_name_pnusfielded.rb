module Ccd
  class USRealmPersonNamePNUSFIELDED < ::Cda::PN
    extend ::Ccd::Dsl


    def self.template_type
      "name"
    end

    Ccd.load_extension('us_realm_person_name_pnusfielded.rb')
  end
end
