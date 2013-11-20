require 'spec_helper'

describe Cda::Base do
  class Cda::TestModelEntry < Cda::Base
    attribute :entry_value, String
  end

  class Cda::TestModel < Cda::Base
    attribute :value, String
    attribute :entries, Array[Cda::Base]
``
    self.defaults = {value: 'Default value', entries: [{_type: 'Cda::TestModelEntry',
                                                        entry_value: 'Default entry value'}]}
  end

  it 'should now allow to set invalid attributes' do
    expect { Cda::TestModel.new(value: 'Valid value') }.to_not raise_error
    expect { Cda::TestModel.new(invalid_value: 'Invalid value') }.to raise_error ArgumentError
    expect { Cda::TestModel.new(entries: [Cda::TestModelEntry.new(entry_value: 'Valid entry value')]) }.to_not raise_error
    expect { Cda::TestModel.new(entries: [{_type: 'Cda::TestModelEntry',
                                             entry_value: 'Valid entry value'}]) }.to_not raise_error
    expect { Cda::TestModel.new(entries: [{_type: 'Cda::TestModelEntry',
                                             wrong_entry_value: 'Valid entry value'}]) }.to raise_error ArgumentError
  end

  it 'should create object with defaults' do
    test_model = Cda::TestModel.new
    test_model.value.should == 'Default value'
    test_model.entries.should have(1).item
    test_model.entries[0].entry_value.should == 'Default entry value'
  end
end