require 'spec_helper'

describe Ccd::Registry do
  subject { described_class.instance }

  it 'should register templates' do
    subject['2.16.840.1.113883.10.20.22.2.3'].should == Ccd::ResultsSectionEntriesOptional
    subject['2.16.840.1.113883.10.20.22.2.3.1'].should == Ccd::ResultsSectionEntriesRequired
  end
end