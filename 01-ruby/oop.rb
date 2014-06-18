require 'pry'
require 'pry-debugger'

class Animal
  def masticate
    puts "nom nom nom"
  end
end

class Person
  attr_accessor :age, :name, :gender
  def initialize(age=nil, name=nil, gender=:indeterminate)
    @name = "Paul Irish"
    @age = 13
    @gender = :indetermine
  end
  def speak
    puts "Good afternoon."
  end

  def talk(words_to_say)
    puts "I'd like to say: #{words_to_say}"
  end

  def to_s
    "#{ @name } is a #{ @age } year old #{ @gender }"
  end

  # def age=(age)
  #   @age = age
  # end

  # def get_age(age)
  #   @age
  # end

  # def gender=(gender)
  #   @gender = gender
  # end
  # def gender
  #   @gender
  # end
  # def name=(name)
  #   @name = name
  # end

  # def name
  #   @name
  # end

end

# def set_age(age)
#   @age = age
# end



# speal (=>Error)
# Person.speak (=>Error)

jonesey = Person.new(75, 'Jonesey McJoneserson', :male)

gorilla = Animal.new
gorilla.masticate

binding.pry