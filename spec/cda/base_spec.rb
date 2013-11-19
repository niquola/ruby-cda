require 'spec_helper'

describe Cda::Base do
  class Cda::TestModelEntry < Cda::Base
    attribute :entry_value, String
  end

  class Cda::TestModel < Cda::Base
    attribute :value, String
    attribute :entries, Array[Cda::Base]
  end

  it 'should now allow to set invalid attributes' do
    expect { Cda::TestModel.new(value: 'Valid value') }.to_not raise_error
    expect { Cda::TestModel.new(invalid_value: 'Invalid value') }.to raise_error ArgumentError
    expect { Cda::TestModel.new(entries: [Cda::TestModelEntry.new(entry_value: 'Valid entry value')]) }.to_not raise_error
    expect { Cda::TestModel.build(entries: [{_type: 'Cda::TestModelEntry',
                                             entry_value: 'Valid entry value'}]) }.to_not raise_error
    expect { Cda::TestModel.build(entries: [{_type: 'Cda::TestModelEntry',
                                             wrong_entry_value: 'Valid entry value'}]) }.to raise_error ArgumentError
  end
end