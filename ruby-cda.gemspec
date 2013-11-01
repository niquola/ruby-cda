# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.version       = '0.0.1'
  spec.name          = 'ruby-cda'

  spec.add_dependency 'activesupport'
  spec.add_dependency 'nokogiri'
  spec.add_dependency 'virtus'

  spec.add_development_dependency 'awesome_print'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'ParseTree'
end
