require 'open-uri'
require 'pry'

class Scraper


  def self.scrape_index_page(index_url)
    # binding.pry
    student_hash = {}
    html = Nokogiri::HTML(open(index_url))
    students = html.css(".student-card")
    students.each do |student|
      binding.pry
      student_hash[:name] = student.css(".student-name").text
      student_hash[:location] = student.css(".student-location").text
      student_hash[:profile_url] = student.css("a/@href").text
    end
  end

  def self.scrape_profile_page(profile_url)

  end

end
