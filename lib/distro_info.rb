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
    #unparsed = HTTParty.get(content )
    parsed = Nokogiri::HTML(content)
    puts parsed.css('table.Logo')
  end
end

distros = Distros.new(2019)
distros.scraper