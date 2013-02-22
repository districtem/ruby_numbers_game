intro = <<MESSAGE
Wintor Storm Nemo took a turn and headed straight for DC.

The storm blanketed the DC metro area, and your car, in 6 feet of snow.
You finally venture out to check on your car but forget where you parked.

Luckily you have Finding Nemo to help you locate your car.
MESSAGE

instructions = <<MESSAGE
FINDING NEMO INSTRUCTIONS:

Finding Nemo knows where your car is located.

You will decide how many guesses it will take you to locate your car.

You will then guess how many feet away your car is located. 
If you guess incorrectly Finding Nemo will give you tips to help you locate your car.

GOOD LUCK!
MESSAGE

puts "#{intro}"
puts
puts "#{instructions}"
puts
puts

def where_is_car

  def prompt1
    puts 
    puts "Number of guesses it will take: "
  end 

  def prompt2
    puts
    puts "Your guess: "
  end


  random = rand(1..100)
  #puts random

  puts "How many guesses do you think it will take to find your car?"
  prompt1; guess = gets.to_i

  puts "Okay #{guess} it is.  Here we go.  How many feet away is your car?"
  prompt2; user = gets.to_i


  i = 1
  while i < guess do

    if user < 1 or user > 100
      puts "USER ERROR: Guesses should be between 1 and 100"
    end 

    break if user == random

    i += 1
    chances = guess + 1 - i 

    if user < random and i < guess 
      puts "Close but no cigar, guess higher."
      puts "Guesses left: #{chances}"
    elsif user < random and i == guess
      puts "Close but no cigar, guess higher."
      puts "On no only #{chances} more chance, make it count."
    elsif user > random and i < guess
      puts "Close but no cigar, guess lower."
      puts "Guesses left: #{chances}"
    elsif user > random and i == guess
      puts "Close but no cigar, guess lower."
      puts "On no ONLY #{chances} MORE CHANCE, make it count."
    end

    prompt2; user = gets.to_i  
  end

  if user == random
      puts "Great Job you guess correctly and found your car! Thank goodness for Finding Nemo!"
      puts
  end

  if user != random 
    puts "Sorry you ran out of guesses.  Looks like you should find some skies!"
    puts
  end

  puts "Do you want to play again?"

  def prompt3
    puts "yes or no? "
  end

  prompt3; play_again = gets.chomp()

  #puts play_again == "yes"
  puts

  if play_again == "yes"
    where_is_car 
  else
    puts "Good-Bye!"
  end

end

where_is_car







