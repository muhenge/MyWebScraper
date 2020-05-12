require '../lib/distro_info.rb'
require "date"

def show_all
  distro = Distros.new
  puts "-----------------------------------------------------"
  puts "Insert any year you want between 2011 till now, you will see a ranking list : or 0 to go back"
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

def choose_one
  distro = Distros.new
  all_distro = distro.show

  puts "----------------------------------------------"
  puts ""
  puts "Insert the year you want to verify."
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
          puts "puts 1 if you need to verify a distro again or 0 to start the program"
          opt = gets.to_i
          case opt
          when 1
            choose_one
          when start
          else
            puts "invalid choice"
            choose_one
            break
          end
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
