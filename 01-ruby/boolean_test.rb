require 'pry'
require 'pry-debugger'

puts "hello"

def boolean_transform(x)
  binding.pry
  if x == "t"
    x = "true"
  else 
    x = "false"
    ### CODE TO CATCH INVALID INPUT? ###
  end
end

input = gets.chomp.to_s.boolean_transform

puts input