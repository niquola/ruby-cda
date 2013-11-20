require_relative 'gen_spec_helper'

describe Gen do
  include described_class

  before(:all) do
    require 'virtus'
    generate
    $LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'lib')
    require 'cda'
  end

  it "should not generate cda classes for mapped types" do
    File.should_not exist("#{Gen::Pth.output_path}/date.rb")
    File.should_not exist("#{Gen::Pth.output_path}/integer.rb")
  end

  it 'should generate at least Act and Section' do
    expect do
      Dir["#{Gen::Pth.output_path}/**/models/*rb"].each do |file|
        next if file =~ /autoloads/
        require file
      end

      Cda::Act
      Cda::Section
    end.not_to raise_error
  end

  it 'should generate hierarchy of classes' do
    Cda::PIVL_TS.should < Cda::SXCM_TS
    Cda::ST.should < Cda::ED
  end

  context 'Cda::Observation' do
    it 'should be generated' do
      expect { Cda::Observation }.not_to raise_error
    end

    it 'should generate at least value attributes for observation' do
      Cda::Observation.new.should respond_to(:value)
    end
  end
end
