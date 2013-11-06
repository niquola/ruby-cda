require 'ccd/config'

module Ccd
  autoload :Dsl, 'dsl.rb'
end

require 'ccd/autoloads'

def Ccd.load_extension(file_name)
  if extension_path = Ccd.config[:extension_path]
    fname = extension_path + "/#{file_name}.rb"
    if File.exists?(fname)
      load(fname)
    end
  end
end
