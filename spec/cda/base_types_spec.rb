require 'spec_helper'

describe "CDA Base types" do
  it "should map CDA types to basic ruby types" do
    Cda::TS.attribute_set[:value].type.primitive.should == Date
    Cda::REAL.attribute_set[:value].type.primitive.should == Float
    Cda::INT.attribute_set[:value].type.primitive.should == Integer
    Cda::II.attribute_set[:extension].type.primitive.should == String
  end
end
