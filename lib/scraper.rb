require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    students = []
    html = open(index_url)
    index  = Nokogiri::HTML(html)
    
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

