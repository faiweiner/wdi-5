puts "Hey, I'm Bob. Talk to me."
input = gets.chomp

until input == "Stop talking!" do
  unless input.empty?
    if input == input.upcase then puts "Dude, chill out!" 
    elsif input.end_with?("?") then puts "Sure." 
    else puts "Whatever." 
    end
  else
    puts "Fine. Be that way!"
  end
  input = gets.chomp
end

puts "Fine, brah. Peace."    



















# if input.start_with?("Bro,")
#   puts "I can teach you to l33t sP34k. Watch!"
#   input_array = input.split(' ')
#     input_array.each do |word|
#       if word.start_with?("a","e","i","o","u") == false
#         word[0].downcase 
#         word.gsub!(/[aeiou]/, 'a' => '4', 'e' => '3', 'i' => '1', 'o' => '0')
#       end
#     end
#     input_array.flatten
#   print input_array
# end