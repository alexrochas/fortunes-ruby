ENV['RACK_ENV'] = 'test'

require './fortunes'
require 'test/unit'
require 'rack/test'

class FortunesTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_it_respond_ok
    get '/fortunes'
    assert last_response.ok?
  end
end
