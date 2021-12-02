class Parser
    def initialize(file_path)
        file_exists?(file_path)
        @file_path = file_path
    end
  
    def parse
        page_visits = Hash.new {|k, v| k[v] = []}
        File.readlines(@file_path, strip: true).each do |each_line|
            routes, user_ip = each_line.split(' ')
            page_visits[routes] << user_ip
        end
        page_visits
    end

    private

    def file_exists?(file_path)
        raise "File doesn't exists" unless File.exists?(file_path)
    end
end

# If called from command line
# if __FILE__ == $PROGRAM_NAME
#     file_path = "./#{ARGV[0]}"
#     Parser.new(file_path).parse
# end
