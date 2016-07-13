require_relative '../fortunes.rb'
require 'rspec'
require 'rack/test'
require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

set :environment, :test
