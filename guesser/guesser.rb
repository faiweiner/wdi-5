class Guesser
  attr_reader :max_guess, :guesses
  def initialize(max_guess=10)
    @max_guess = max_guess
    @super_secret_number = rand(@max_guess)
    @guesses = 0
  end

  def try(guess)
    @guesses += 1
    guess == @super_secret_number 
    # if ( guess == @secret_number)
    #   true
    # else
    #   false
  end

end