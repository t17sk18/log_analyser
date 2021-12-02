require 'spec_helper'
require_relative '../lib/analyser'

RSpec.describe Analyser do
   let(:file_path) {'./webserver.log'}
    describe '#total_webpage_views' do
        let(:actual_result) do
          [
            ["/about/2", 90], ["/contact", 89], ["/index", 82], ["/about", 81], ["/help_page/1", 80], ["/home", 78]
          ]
        end
        it 'should return the webpages with total view counts in sorting order' do
          result_hash_expected = Analyser.new(file_path).total_webpage_views
          expect(result_hash_expected).to eq(actual_result)
       end
    end

    describe '#unique_webpage_views' do
      let(:actual_result) do
        [
          ["/index", 23], ["/home", 23], ["/contact", 23], ["/help_page/1", 23], ["/about/2", 22], ["/about", 21]
        ]
      end
      it 'should return the total unique views for the webpages' do
        result_hash_expected = Analyser.new(file_path).unique_webpage_views
        expect(result_hash_expected).to eq(actual_result)
      end
    end
end


# it 'should return total visits for a particular page' do

#   expect { Parser.new(file_path).total_webpage_views }.to raise_error("File doesn't exists")
# end

# it 'should convert the log file into a hash with expected keys' do
#   expect(Parser.new(file_path).parse).to have_key("/about")
# end

# it 'should convert the log file into a hash with expected keys' do
#   expect(Parser.new(file_path).parse).to have_key("/home")
# end
# # Simalrly tests can be written for other keys

# it 'should include expected test values for the given key' do
#   hash = Parser.new(file_path).parse
#   expect(hash["/help_page/1"]).to include("126.318.035.038", "929.398.951.889", "722.247.931.582")   
# end
# # Simalrly tests can be written for other keys and with respective test values    
# end