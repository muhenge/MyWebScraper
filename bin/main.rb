#!/usr/bin/env ruby

require_relative '../lib/distro_info.rb'
require 'date'

def show_all(distro)
  puts '-----------------------------------------------------'
  puts 'Insert any year you want between 2011 till now, you will see a ranking list : or 0 to go back'
  year = gets.to_i
  while year
    case year
    when 0
      start
    when 2011..Date.today.year.to_i
      year = distro.input
      puts ''
      puts 'The Linux Distrubutions list'
      puts '-----------------------------'
      distro.show.each_with_index { |name, index| puts "#{index + 1}. #{name}" }
      puts '---------------------------------------------------------'
      start
      next
    else
      puts '--------------------------------------------------------------'
      puts "Year beyond scope, year must be between 2011 to today's year"
      puts '--------------------------------------------------------------'
      year = gets.to_i
      next
    end
  end
end

def choix(distro)
  puts '----------------------------------------------'
  puts ''
  puts 'Insert the year you want to verify.'
  puts ''
  year = gets.to_i
  while year
    case year
    when 0
      start
    when 2011..Date.today.year.to_i
      name_(distro)
    else
      puts "Year beyond scope, year must be between 2011 to today's year"
      year = gets.to_i
      next
    end
  end
end

def name_(distro)
  all_distro = distro.show
  puts 'Enter a distro name'
  name = gets.chomp.capitalize
  index = all_distro.index(name)
  while name
    if all_distro.include?(name) == true
      puts ''
      puts '---------------------------------------'
      puts "'#{name}' is at position '#{index + 1}'"
      puts '---------------------------------------'
      puts ''
      puts 'puts 1 if you need to verify a distro again or 0 to start the program'
      opt = gets.to_i
      case opt
      when 1
        choix(distro)
      when 0
        start
      else
        puts 'invalid choice'
        choix(distro)
        break
      end
    else
      puts "'#{name}' not found, try again"
      choix(distro)
    end
  end
end

def start
  distro = Distros.new
  puts 'Hello, this program is helping you to choose a linux distribition based on the popurality and users rating'
  puts '---------------------------------------'
  puts 'Enter an option to start'
  puts ''
  puts '1. Show all Linux distros. '
  puts '2. show my linux of choice.'
  choice = gets.to_i
  while choice
    case choice
    when 1
      show_all(distro)
    when 2
      choix(distro)
    else
      puts 'Wrong option! Try again 1 or 2'
      choice = gets.to_i
      next
    end
  end
end

start
