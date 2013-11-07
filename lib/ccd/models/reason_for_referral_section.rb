module Ccd
  class ReasonForReferralSection < ::Cda::Section
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7844) such that it
    constraint 'template_id', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="1.3.6.1.4.1.19376.1.5.3.1.3.1" (CONF:10468).
    constraint 'template_id.root', cardinality: '1..1', value: '1.3.6.1.4.1.19376.1.5.3.1.3.1'

    #SHALL contain exactly one [1..1] code (CONF:15427).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="42349-1" Reason for Referral (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15428).
    constraint 'code.code', cardinality: '1..1', value: '42349-1'

    #SHALL contain exactly one [1..1] title (CONF:7846).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:7847).
    constraint 'text', cardinality: '1..1'

    Ccd.load_extension('reason_for_referral_section.rb')
  end
end
