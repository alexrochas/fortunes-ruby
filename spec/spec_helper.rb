require 'coveralls'
Coveralls.wear!
require_relative '../lib/fortunes.rb'
require 'rspec'
require 'rack/test'
require 'json'

set :environment, :test

def riddles_resource
  read_resource.("riddles")
end

def cookie_resource
  read_resource.("cookie")
end

def extract_json_message(json)
  JSON.parse(json)['message']
end

private
  def read_resource()
    -> (file_name) {
      File.open(File.join( File.dirname(__FILE__), "../lib/fortunes/#{file_name}" )).read
    }
  end
