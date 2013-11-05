$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'generation')
require 'ccd_gen'

describe CcdGen do
  include described_class
  before(:all) do
    require 'virtus'
    generate
    $LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'lib')
    $LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..')
    require 'cda'
    require 'ccd'
  end

  example do
    glob = "#{File.dirname(__FILE__)}/../lib/ccd/*rb"
    Dir[glob].each { |f|
      next if f =~ /policy_activity/
      require f#File.expand_path(f)
    }
  end

  example do
    Ccd::MedicationsSectionEntriesRequired.should be
  end
end
