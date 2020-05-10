require "../lib/distro_info.rb"
distros = Distros.new

def show_all
  distros = Distros.new
  puts ""
  puts "Hello, Welcome!"
  puts "I am going to show you the all linux distro list based on the usage"
  puts "-------------------------------------------------------------------"
  puts "Please Enter the year you want, to display the list"
  year = gets.chomp
  distros.input = year
  distros.scraper
  puts distros.all
end

def choose_one
   distros = Distros.new
  # puts "enter year"
  # year = gets.to_i
  # distros.input = year
  # puts "distro name"
  # name = gets.chomp
  # puts (distros.all).include?(name)
  puts distros.all
end
choose_one

# puts ""
# puts "This program can help you to rate Linux distibution, and help you to make decisions.\nit is comparing a disto that you want based on the past years"
# puts "---------------------------------------------------------------------------------------------------------------------\n\n"
# puts "Please select an option: "
# puts ""
# puts "1. Show all Linux distros. "
# puts "2. show my linux of choice."
# puts "3. compare my linux distro."




# puts "Enter year"
# year = gets.chomp
# distros.input = year
# distros.scraper
# puts distros.all

# year = gets.to_i
# distros.input = year
# distros.view

# arr = [4, 5, 6, 7, 2, 3, 10]
# puts "Please Enter a Linux distro see informarion and recommendation"
# user_input = gets.to_i
# while arr.include?(user_input) == false
#   puts "not valid"
#   user_input = gets.to_i
#   show if arr.include?(user_input)
# end

# distro_chooser
