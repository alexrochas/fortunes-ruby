require 'sinatra'
require 'json'

Fortune = Struct.new(:message)

get '/fortunes' do
  cookies = File.open('lib/cookie').read.scan(/((?<=%).+?(?=%))/m)
  fortune = Fortune.new(message: cookies.sample)
  JSON.generate({:message => fortune.message})
end
