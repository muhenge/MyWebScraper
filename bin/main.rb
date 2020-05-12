require "../lib/distro_info.rb"
require "../lib/display_info.rb"
require "date"

def show_all
  distro = Distros.new
  puts "-----------------------------------------------------"
  puts "Enter any year you want between 2011 till now, you will see a ranking list : or 0 to go back"
  year = gets.to_i
  while year
    case year
    when 0
      start
    when 2011..(Date.today.year).to_i
      distro.input = year
      puts distro.show
      puts ""
      start
    else
      puts "Year beyond scope, year must be between 2011 to today's year"
      year = gets.to_i
      next
    end
  end
end

#ssss
#show_all
#def compare
#   distro = Distros.new
#   today_distro = Todays.new
#   puts "Please Enter the name of the distro to compare"
#   name = gets.chomp.capitalize
#   last_year = (Date.today.year)-1
#   distro.input = last_year
#   last_year_index = (distro.show).index(name)
#   today_index = (today_distro.today_show).index
#   differance = today_index - last_year_index
#   if today_show <=> last_year_index = 1
#     puts "It seems #{name} Distro is gaining #{differance} places today"
#   end
# end

# compare
def choose_one
  distro = Distros.new
  all_distro = distro.show
  
  puts "----------------------------------------------"
  puts ""
  puts "Enter the year"
  year = gets.to_i
  while year
    case year
    when 0
      start
    when 2011..(Date.today.year).to_i
      puts "Enter a distro name"
      name = gets.chomp.capitalize
      index = (all_distro).index(name)
      while name
        if all_distro.include?(name) == true
          puts ""
          puts "--------------------------------------"
          puts "Found!"
          puts "'#{name}' is at position '#{index}'"
          puts "--------------------------------------"
          puts ""
          break
          start
        else
          puts "'#{name}' not found, try again"
          puts ""
          choose_one
        end
      end
    else
      puts "Year beyond scope, year must be between 2011 to today's year"
      year = gets.to_i
      next
    end
  end
end

def start
puts ""
  puts "Hello, this program is helping you to choose a linux distribition based on the popurality and users rating"
  puts "---------------------------------------"
  puts ""

  puts "Enter an option to start"
  puts ""
  puts ""
  puts "1. Show all Linux distros. "
  puts "2. show my linux of choice."
  puts ""
  print ""
  choice = gets.to_i

  while choice
    case choice
    when 1
      show_all
    when 2
    choose_one
    else
      puts "Wrong option! Try again 1 or 2"
      choice = gets.to_i
    next
    end
  end
end

start
