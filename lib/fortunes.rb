require 'json'
require_relative 'fortunes_helper'

class Fortunes

  Fortune = Struct.new(:message)

  def fortune 
    file_name = 'brasil'
    file_name >> read_file >> parse_file >> extract_sample
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
