require "nokogiri"
require "httparty"
require "httpclient"
require "pry"
require "open-uri"
require "watir"

class Distros
  attr_accessor :input

  def initialize(input)
    @input = input
  end

  def scraper
    url = "https://distrowatch.com/index.php?dataspan=#{@input}"
    document = open(url)
    content = document.read
    parsed = Nokogiri::HTML(content)
    list = parsed.css('table.Logo table.News td.phr2 a')
    puts list
  end
end

distros = Distros.new(2019)
distros.scraper