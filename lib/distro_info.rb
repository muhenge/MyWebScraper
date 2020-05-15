require 'nokogiri'
require 'open-uri'
class Distros
  attr_accessor :input

  private

  def scraper
    url = "https://distrowatch.com/index.php?dataspan=#{input}"
    doc = Nokogiri::HTML(URI.open(url))
    @list = doc.css('table.Logo table.News td.phr2 a')
    
  end

  public

  def show
    scraper
    all = []
    (0..@list.length - 1).each do |distro|
      all << @list[distro].text
    end
    all
  end
end
