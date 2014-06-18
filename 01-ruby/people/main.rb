require_relative 'person'

# gary = Person.new('Gary Quince', 43, :male)
# p gary
# p gary.age

f = File.new('database.txt', 'a+')

# people << Person.new("Riley", 30, :male)

print 'Add a person? '
response = gets.chomp.downcase

while response == 'y'
  print 'Name: '
  name = gets.chomp

  print 'Age: '
  age = gets.chomp.to_i

  print 'Gender: '
  gender = gets.chomp

  # people << Person.new(name, age, gender)
  #!! USE FILE INSTEAD!!!

  f.puts "#{name}, #{age}, #{gender}"

  print 'Do you want to add another person?: '
  response = gets.chomp.downcase
  # response is returned and this loop keeps going
end

f.close

f = File.new('database.txt', 'r')
people = []

# f.each do |line|
#   puts line.upcase.reverse
# end

f.each do |line|
  thing = line.split(', ')
  person = Person.new(thing[0], thing [1], thing[2])
  people << person
end

f.close

people.each do |p|
  puts p.to_s
end