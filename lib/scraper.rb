require 'open-uri'
require 'pry'

class Scraper


  def self.scrape_index_page(index_url)
    # binding.pry
    student_list = []
    html = Nokogiri::HTML(open(index_url))
    students = html.css(".student-card")
    students.each do |student|
      binding.pry
      student.css(".student-name").text
      student.css(".student-location").text
      student.css("a/@href").text
    end
  end

  def self.scrape_profile_page(profile_url)

  end

end
