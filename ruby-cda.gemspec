# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'ruby-cda'
  spec.version       = '0.0.1'

  spec.files         = `git ls-files lib`.split($/)
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport', '>= 3.2'
  spec.add_dependency 'nokogiri'
  spec.add_dependency 'virtus'
  spec.add_dependency 'i18n', '>= 0.6'

  spec.add_development_dependency 'awesome_print'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'ParseTree'
end
