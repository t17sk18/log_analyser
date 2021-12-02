require 'spec_helper'
require_relative '../lib/parser'

RSpec.describe Parser do
   let(:file_path) {'./webserver.log'}
    describe '#parse' do
      it 'should throw a error message "File not found" error when no file' do
        expect { Parser.new('./test.log') }.to raise_error("File doesn't exists")
      end
      
      it 'should convert the log file into a hash with expected keys' do
        expect(Parser.new(file_path).parse).to have_key("/about")
      end
      
      it 'should convert the log file into a hash with expected keys' do
        expect(Parser.new(file_path).parse).to have_key("/home")
      end
      # Simalrly tests can be written for other keys

      it 'should include expected test values for the given key' do
        hash = Parser.new(file_path).parse
        expect(hash["/help_page/1"]).to include("126.318.035.038", "929.398.951.889", "722.247.931.582")   
      end
      # Simalrly tests can be written for other keys and with respective test values    
    end
end
 
