require 'open-uri'
require 'pry'

class Scraper


  def self.scrape_index_page(index_url)
    
    student_list = []
    html = Nokogiri::HTML(open(index_url))

    page.css(".student-name").text
    binding.pry
    page.css(".student-location").text
  end

  def self.scrape_profile_page(profile_url)

  end

end
