require 'sinatra'
require 'json'

Fortune = Struct.new(:message)

get '/fortunes' do
  cookies = File.open('lib/cookie').read.scan(/((?<=%).+?(?=%))/m)
  fortune = Fortune.new(cookies.sample[0])
  JSON.generate({:message => fortune.message})
end
