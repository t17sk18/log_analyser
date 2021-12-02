require_relative 'parser'
class Analyser

    def initialize(file_path)
        @page_visits = Parser.new(file_path).parse
    end

    def analyser_output
        total_webpage_views
        puts "\n\nList of webpages with most page views \n"
        puts "------------------------------------------"
        @count.each {|k, v| puts "#{k} - #{v} visits"}
        
        unique_webpage_views
        puts "\n List of webpages with most unique page \n"
        puts "-------------------------------------------"
        @unique.each {|k, v| puts "#{k} - #{v} unique views"}
    end

    def total_webpage_views
        count = Hash.new
        @page_visits.each {|k, v| count[k] = v.count}
        @count = count.sort_by {|k, v| v}.reverse
    end

    def unique_webpage_views
        unique = Hash.new
        @page_visits.each {|k, v| unique[k] = v.uniq.count}
        @unique = unique.sort_by {|k, v| v}.reverse
    end
    
end

# Analyser.new('./webserver.log').analyser_output