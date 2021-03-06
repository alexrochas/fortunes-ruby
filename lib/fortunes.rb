require 'sinatra'
require 'json'
require 'pickup'
require_relative 'fortunes_helper'

class FortunesApp < Sinatra::Base

  Fortune = Struct.new(:message)

  fortune_files = {
      'cookie' => 1,
      'riddles' => 1
  }

  get '/fortunes' do
    fortune_files.merge!(params){|key, oldval, newval| newval.to_i} unless params.empty?
    random_file = Pickup.new(fortune_files).pick(1)
    random_file >> read_file >> parse_file >> extract_sample >> generate_json
  end

  get '/fortunes/:type' do
    file_name = params['type']
    file_name >> read_file >> parse_file >> extract_sample >> generate_json
  end

  private
    def read_file()
      -> (file_name) {File.open(File.join( File.dirname(__FILE__), "fortunes/#{file_name}" )).read}
    end

    def parse_file()
      -> (file) {file.scan(/((?<=%).+?(?=%))/m)}
    end

    def extract_sample
      -> (file_content) {Fortune.new(file_content.sample[0]).message}
    end

    def generate_json
      -> (message) {JSON.pretty_generate({:message=> message})}
    end

end
