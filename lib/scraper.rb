require 'open-uri'
require 'pry'

class Scraper


  def self.scrape_index_page(index_url)
    student_list = []
    html = Nokogiri::HTML(open(index_url))
    students = html.css(".student-card")
    students.each do |student|
      student_hash = {}
      student_hash[:name] = student.css(".student-name").text
      student_hash[:location] = student.css(".student-location").text
      student_hash[:profile_url] = student.css("a/@href").text
      student_list << student_hash
    end
    student_list
    # student_list.sort {|a, b| a[:name] <=> b[:name]}
  end

  def self.scrape_profile_page(profile_url)
    student_profile_list = []
    html = Nokogiri::HTML(open(index_url))
    students = html.css(".student-card")
    students.each do |student|
  end

end
