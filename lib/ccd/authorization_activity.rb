module Ccd
  class AuthorizationActivity < ::Cda::Act
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8944).
    constraint 'classCode', cardinality: '1..1', value: 'ACT'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8945).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:8946) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.1.19" (CONF:10529).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.1.19'

    #SHALL contain exactly one [1..1] id (CONF:8947).
    constraint 'id', cardinality: '1..1'

    #SHALL contain at least one [1..*] entryRelationship (CONF:8948) such that it
    constraint 'entryRelationship', cardinality: '1..*'

    #SHALL contain exactly one [1..1] @typeCode="SUBJ" Has Subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8949).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'SUBJ'

    # 	The target of an authorization activity with act/entryRelationship/@typeCode="SUBJ" SHALL be a clinical statement with moodCode="PRMS" Promise
    constraint 'entryRelationship'

    #	The target of an authorization activity MAY contain one or more performer, to indicate the providers that have been authorized to provide treatment
    constraint 'entryRelationship'
  end
end
