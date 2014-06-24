print "Question: "
input = gets.chomp
while input != "quit"
  arithmatic = input.gsub('What is ','').gsub('?','').gsub('by','').split(' ')
  first_num = arithmatic[0].to_i
  operation = arithmatic[1]
  second_num = arithmatic[2].to_i

  case operation
    when "plus" then answer = first_num + second_num
    when "minus" then answer = first_num - second_num
    when "multiplied" then answer = first_num * second_num
    when "divided" then answer = first_num / second_num
    else answer = "Does not compute."
  end
  puts "Answer: #{answer}" 
  print "Question: "
  input = gets.chomp
end