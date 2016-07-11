require_relative '../fortunes.rb'
require 'rspec'
require 'rack/test'

set :environment, :test

describe "Fortune API" do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "should return ok response" do
    get '/fortunes'
    expect(last_response).to be_ok
  end
end
