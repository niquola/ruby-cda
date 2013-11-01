$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'generation')
require 'ccd'

describe CcdGen do
  include described_class
  before(:all) do
    require 'virtus'
    generate
    $LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'lib')
    require 'cda'
  end

  example do
    glob = "#{File.dirname(__FILE__)}/../lib/ccd/*rb"
    Dir[glob].each { |f|
      next if f =~ /autoload/
      require f
    }
  end

  example do
    Ccd::MedicationsSectionEntriesRequired.should be
  end
end
