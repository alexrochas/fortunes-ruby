require 'spec_helper'

describe "Fortune API" do
  include Rack::Test::Methods

  def app
    FortunesApp
  end

  context 'when requesting fortunes' do
    before { get '/fortunes' }
    it { expect(last_response).to be_ok }
  end

  context "when requesting only riddles" do
    before { get '/fortunes?riddles=100;cookie=0' }
    it { expect(last_response).to be_ok }
    it { expect(riddles_resource).to include(extract_json_message(last_response.body)) }
  end

  context "when requesting a riddle" do
    before { get '/fortunes/riddles' }
    it { expect(last_response).to be_ok }
    it { expect(riddles_resource).to include(extract_json_message(last_response.body)) }
  end

  context "when requesting only cookies" do
    before { get '/fortunes?cookie=50;riddles=0' }
    it { expect(last_response).to be_ok }
    it { expect(cookie_resource).to include(extract_json_message(last_response.body)) }
  end

  context "when requesting a cookie" do
    before { get '/fortunes/cookie' }
    it { expect(last_response).to be_ok }
    it { expect(cookie_resource).to include(extract_json_message(last_response.body)) }
  end

end
