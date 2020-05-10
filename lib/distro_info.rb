require "nokogiri"
require "httparty"
require "httpclient"
require "open-uri"

class Distros
  attr_accessor :input
  attr_reader :all
  def initialize
    @input = input
    @all = Array.new
  end



  def scraper
    url = "https://distrowatch.com/index.php?dataspan=#{@input}"
    document = open(url)
    content = document.read
    parsed = Nokogiri::HTML(content)
    list = parsed.css("table.Logo table.News td.phr2 a")
    (0...list.length).each do |distro|
      @all << list[distro].text
    end
    @all
  end

end

 distros = Distros.new
puts "Enter year"
year = gets.to_i
distros.input = year
distros.scraper
puts distros.all