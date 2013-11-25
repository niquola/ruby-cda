require 'virtus'
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
  autoload :ValueCoercer, 'cda/value_coercer'
  autoload :Timestamp, 'cda/timestamp'
  autoload :Base, 'cda/base'
end

require 'cda/autoloads'
#Explicit require CR to break cyclic dependency between CV and CR
require 'cda/models/cr'