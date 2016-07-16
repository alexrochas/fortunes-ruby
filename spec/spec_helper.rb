require 'coveralls'
Coveralls.wear!
require_relative '../lib/fortunes.rb'
require 'rspec'
require 'rack/test'

set :environment, :test
