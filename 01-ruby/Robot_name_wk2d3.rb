class Robot
  attr_accessor :name, :count, :creation_time, :updated_time
  def initialize
    @count = 0
    @creation_time = Time.new
    @updated_time = nil
    @name = "#{random_string}#{random_num} was created on #{@creation_time}"
  end
  def random_string(length=2)
    name_letters = []
    length.times do
      chars = ('A'..'Z').to_a
      name_letters << chars[rand(chars.size)]
      end
    name_letters.join
  end 
  def random_num(length=3)
    name_num = []
    length.times do
      chars = (1..9).to_a
      name_num << chars[rand(chars.size)]
    end
    name_num.join
  end

  def reset
    @name = "#{random_string}#{random_num} was"
    @count += 1
  end

  def instruction_count
    puts "#{@name} has been resetted #{@count} times."
  end

  def timers
    current_time = Time.new
    updated_time = @current_time - @creation_time #Does not work!
    puts "#{@name} was last resetted #{@updated_time} ago."
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
puts robot3.instruction_count
puts robot3.timers


