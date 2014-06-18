# Set parameter for the game.
MIN_GUESS = 0
MAX_GUESS = 10

def guess_game
  # Telling the user to follow the prompt.  
  puts "I am thinking of an integer between #{MIN_GUESS} and #{MAX_GUESS}... what number am I thinking of? "

  # Obtain input from user.
  answer = gets.to_i

  # Generate a random number between MIN_GUESS and MAX_GUESS.
  secret = rand(MIN_GUESS..MAX_GUESS)

  # Use a while loop to let the user guess again until he/she gets the answer right.
  while answer != secret
      if answer < MIN_GUESS || answer > MAX_GUESS
        puts "Read the prompt, yo. Choose an integer between #{MIN_GUESS} and #{MAX_GUESS}!"
      else
        if answer > secret
          print "Womp womp. Guess lower... "
        elsif answer < secret
          print "Womp womp. Guess higher... "
        end 
      end
    answer = gets.to_i 
  end

  puts "That's it!  How'd you know?!"
end

def play_again
  puts "Would you like to play again? Yes/No"
  user_play = gets.chomp.downcase
  if user_play != "yes"
    puts "Thank you, come again."
    Process.exit
  end
end

while true
  guess_game
  play_again
end