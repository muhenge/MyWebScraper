require "../lib/distro_info.rb"



def distro_chooser
  arr = [4, 5, 6, 7, 2, 3, 10]
  puts "Please Enter a Linux distro see informarion and recommendation"
  user_input = gets.to_i
  while arr.include?(user_input) == false
    puts "not valid"
    user_input = gets.to_i
    show if arr.include?(user_input)
  end
end

distro_chooser
