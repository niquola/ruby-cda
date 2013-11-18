#!/usr/bin/env ruby
require 'fileutils'

$LOAD_PATH.unshift(File.dirname(__FILE__))

require_relative 'ccd_gen'
require_relative 'cda_gen'

CcdGen.generate
Gen.generate
