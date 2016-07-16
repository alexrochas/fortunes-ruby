require 'spec_helper'

describe "Fortune API" do
  include Rack::Test::Methods

  def app
    FortunesApp
  end

  it "should return ok response" do
    get '/fortunes'
    expect(last_response).to be_ok
  end

  it "should return only riddles" do
    get '/fortunes?riddles=100'
    expect(last_response).to be_ok
  end

  it "should return a riddle" do
    get '/fortunes/riddles'
    expect(last_response).to be_ok
  end

end
