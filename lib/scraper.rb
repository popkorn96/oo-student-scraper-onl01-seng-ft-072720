require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    students = []
    html = open(index_url)
    index  = Nokogiri::HTML(html)
    index.css("div.student-card").each do |student|
      stu_details = {}
      stu_details[:name] = student.css("h4.student-name")
      stu_details[:location] = student.css("p.student-location")
      profile_path = student.css("a").attribute("href").value
      stu_details[:profile_url] = './fixtures/student-site/index.html' + profile_path
      students << stu_details
      #binding.pry
    end
    students
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

