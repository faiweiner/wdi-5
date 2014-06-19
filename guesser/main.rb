require 'pry'
require 'pry-debugger'
require_relative 'guesser.rb'
game = Guesser.new(10)

game = Guesser.new #default value to 100 based on what the guesser.rb

# the game should run until the guess is correct

puts "Welcome to guessing game. Please guess secret number which is less than #{game.max_guess}"
user_guess = gets.chomp.to_i
until (game.try(user_guess))
  puts "Wrong! Try again"
  puts "You've guessed #{game.guesses}"
  user_guess = gets.chomp.to_i
end

puts "You guessed it"

binding.pry