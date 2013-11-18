require 'spec_helper'

describe "CDA Base types" do
  it "should map CDA types to basic ruby types" do
    Cda::TS.attribute_set[:value].type.primitive.should == DateTime
    Cda::REAL.attribute_set[:value].type.primitive.should == Float
    Cda::INT.attribute_set[:value].type.primitive.should == Integer
  end
end
