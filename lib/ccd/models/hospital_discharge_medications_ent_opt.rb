module Ccd
  class HospitalDischargeMedicationsEntOpt < ::Cda::Section
    extend ::Ccd::Dsl
    # SHALL contain exactly one [1..1] templateId (CONF:7816) such that it
    constraint 'template_id', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.11" (CONF:10396).
    constraint 'template_id.root', {:cardinality=>"1..1", :value=>"2.16.840.1.113883.10.20.22.2.11"}

    # SHALL contain exactly one [1..1] code (CONF:15359).
    constraint 'code', {:cardinality=>"1..1", :value=>{:code=>"10183-2", :display_name=>"Hospital Discharge Medications", :code_system=>"2.16.840.1.113883.6.1", :_type=>"Cda::CV"}}

    # SHALL contain exactly one [1..1] title (CONF:7818).
    constraint 'title', {:cardinality=>"1..1"}

    # SHALL contain exactly one [1..1] text (CONF:7819).
    constraint 'text', {:cardinality=>"1..1"}

    Ccd.load_extension('hospital_discharge_medications_ent_opt.rb')
  end
end
