#Deaf Grandma - Week 3 Day 1
bye_count = 0
puts "Say something to Grandma."

until bye_count == 3
  print "You: "
  input = gets.chomp
  if input != "BYE"
    if input == input.upcase
      year = Random.new
      year_r = year.rand(1930..1950)
      puts "Grandma: NO, NOT SINCE #{year_r}!"
      bye_count = 0
    else
      puts "Grandma: HUH?! SPEAK UP, SONNY!"
    end
  else
    bye_count += 1
    puts "Grandma: You don't want to leave yet, do you?" unless bye_count == 3
  end
end
puts "Grandma: OKAY, SONNY, SEE YOU TOMORROW!"