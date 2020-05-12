require "nokogiri"
require "httparty"
require "httpclient"
require "open-uri"

class Distros_info
  attr_reader :name
  def initialize(name)
    @name = name
  end
  
  def distro_info
    url = "https://distrowatch.com/table.php?distribution=#{@name}"
    puts url
    document = open(url)
    content = document.read
    parsed = Nokogiri::HTML(content)
    info = parsed.css("td.TablesTitle ul li a")
    puts info
  end
end

distro = Distros_info.new('manjoro')
distro.distro_info
