require 'spec_helper'

describe "Generated CCD code" do
  it "should require all generated files without exceptions" do
    glob = "#{File.dirname(__FILE__)}/../../lib/ccd/models/*.rb"

    -> {
      Dir[glob].each { |f| require f }
    }.should_not raise_error
  end

  it "should correctly report template type for generated classes" do
    Ccd::ContinuityOfCareDocumentCCD.template_type.should == "ClinicalDocument"
    Ccd::USRealmHeader.template_type.should == "ClinicalDocument"
    Ccd::AgeObservation.template_type.should == "observation"
  end
end
