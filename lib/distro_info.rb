require 'nokogiri'
require 'httparty'
require 'httpclient'


class Distros
  attr_accessor :input

  private

  def scraper
    url = "https://distrowatch.com/index.php?dataspan=#{input}"
    document = open(url)
    content = document.read
    parsed = Nokogiri::HTML(content)
    @list = parsed.css('table.Logo table.News td.phr2 a')
  end

  public

  def show
    scraper
    all = []
    (0..@list.length-1).each do |distro|
      all << @list[distro].text
    end
    all
  end
end
