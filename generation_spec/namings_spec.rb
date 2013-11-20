require_relative 'gen_spec_helper'

describe Gen::Namings do
  include described_class
  example do
    normalize_name('associated_entity/class_code').should == 'associated_entity.class_code'
  end

  example do
    mk_class_name('st').should == 'String'
    mk_class_name('url').should == 'Url'
    mk_class_name('ActMood').should == 'ActMood'
    mk_class_name('ADXP').should == 'ADXP'
    mk_class_name('adxp.additionalLocator').should == 'AdxpAdditionalLocator'
    mk_class_name('POCD_MT000040.Act').should == 'Act'
    mk_class_name('PIVL_TS').should == 'PIVL_TS'
    mk_class_name('StrucDoc.Content').should == 'StrucDocContent'
    mk_class_name('xs:string').should == 'String'
    mk_class_name('xs:NMTOKENS').should == 'Array[String]'
    mk_class_name('POCD_MT000040.InfrastructureRoot.typeId').should == 'InfrastructureRootTypeId'
    mk_class_name('x_ActClassDocumentEntryOrganizer').should == 'XActClassDocumentEntryOrganizer'
  end

  example do
    mk_ccd_class_name('E_Drug_Vehicle').should == 'DrugVehicle'
    mk_ccd_class_name('D_US_Realm_Header').should == 'USRealmHeader'
    mk_ccd_class_name('S_Complications_(OpNote)').should == 'ComplicationsOpNote'
    mk_ccd_class_name('S_Allergies_Section_entries_optional').should == 'AllergiesSectionEntriesOptional'
  end
end
