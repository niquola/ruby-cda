require 'cda/autoloads'
require 'active_support/core_ext/string'
require 'active_support/core_ext/object'
require 'active_support/core_ext/hash/indifferent_access'
require 'active_support/core_ext/class/attribute'

module Cda
  extend self

  autoload :XmlBuilder, "cda/xml_builder"
  autoload :XmlParser, "cda/xml_parser"
  autoload :TemplatesRegistry, "cda/templates_registry"
  autoload :RSpec, "cda/rspec"
  autoload :MetaInfo, "cda/meta_info"
  autoload :StrictAttributes, 'cda/strict_attributes'
  autoload :Utility, 'cda/utility'
  autoload :Base, 'cda/base'
end
