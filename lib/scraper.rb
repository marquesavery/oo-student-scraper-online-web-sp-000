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
      puts student.text.strip
      html.css(".student-name").text
      html.css(".student-location").text
    end

    html.css(".student-name").text
    html.css(".student-location").text
  end

  def self.scrape_profile_page(profile_url)

  end

end
