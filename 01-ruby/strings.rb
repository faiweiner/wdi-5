# Prompt the user for their name.
puts "What is your first name? Type it, then press enter."
first_name = gets.chomp

puts "What is your last name? Type it, then press enter."
last_name = gets.chomp

full_name = first_name + " " + last_name

puts "Where do you live?"
address = gets.chomp

puts "Your name is #{full_name} and you live at #{address}!"