require 'pry'
require 'pry-debugger'

class Robot
  attr_reader :name, :instruction_count

  def initialize
    @name = "#{prefix}#{suffix}"
  end

  def prefix
    ('A'..'Z').to_a.sample(2).join
  end

  def suffix
    (1..9).to_a.sample(3).join
  end

  def reset
    @name = "#{prefix}#{suffix}"
  end

end

puts "Robot 1: "
robot1 = Robot.new
puts robot1.name
puts robot1.name
puts robot1.name

puts "Robot 2: "
robot2 = Robot.new
puts robot2.name
puts robot2.name
puts robot2.name

puts "Robot 3: "
robot3 = Robot.new
puts robot3.name
puts robot3.name
puts "Resetting to factory settings."
robot3.reset
puts robot3.name
puts robot3.name