brothers = ['grouch marx', 'harpo marx', 'chico marx', 'gummo marx']
p brothers
puts brothers
p brothers.join(' and also ')

brothers.each do |b|
  p b.capitalize
end

brothers.each { |b| p b.upcase } # Eqivalent to above

brothers.each do |b|
  unless b == 'chico marx'
    p b.split('').map(&:capitalize).join()
  else
    p b
  end
end

2.times do
  puts "Happy brthday to Rodrigo,"
end
puts "Happy birthday Rodrigo,"
puts "Happy birthday to you!"

2.times do |count|
  puts "Happy brthday to Rodrigo #{count} times,"
end
puts "Happy birthday Rodrigo,"
puts "Happy birthday to you!"

10.downto(1) do |i|
  puts i
end
puts "Blast off!"

(1..10).to_a.reverse

squares = []
[1, 2, 3, 9].each do |n|
  squares << (n * n)
end
p squares

[1, 2, 3, 9].each do |i|
  i ** 2
end

fullnames = []
["Groucho", "Harpo", "Chico", "Zeppo"].each do |name|
  fullnames << "#{name} Marx"
end
p fullnames

fullnames = ["Groucho", "Harpo", "Chico", "Zeppo"].map do |name|
  "#{name} Marx"
end
p fullnames

["Groucho", "Harpo", "Chico", "Zeppo"].each do |brother_name|
  puts "#{brother_name} is one of Joel's favourite Marx brothers."
end

puts "------Using .each with index------"

brothers = ["Groucho", "Harpo", "Chico", "Zeppo"]
brothers.each do |brother_name|
  index = brothers.index(brother_name) + 1 #add that plus one to account for index starting with 0
  puts "#{brother_name} is Joel's ##{index} favourite Marx brother."
end

puts "------Worst way------"

brothers = ["Groucho", "Harpo", "Chico", "Zeppo"]
index = 1
brothers.each do |brother_name|
  puts "#{brother_name} is Joel's ##{index} favourite Marx brother."
  index += 1
end

puts "------Example using .each_with_index------"

brothers = ["Groucho", "Harpo", "Chico", "Zeppo"]
brothers.each_with_index do |brother_name, index|
  puts "#{brother_name} is Joel's ##{index + 1 } favourite Marx brother."
  index += 1
end

brothers = ["Groucho", "Harpo", "Chico", "Zeppo"]
brothers.shuffle.each_with_index do |brother_name, index|
  puts "#{brother_name} is Joel's ##{index + 1 } favourite Marx brother."
  index += 1
end

nums = [1, 4, 6, 3, 65, 67, 44, 30, 2, 29]

evens = nums.select do |n|
  n.even? # Select the number for which this test is true
end
p evens

evens = nums.select do |n|
  n.odd? # Select the number for which this test is true
end
p evens

p nums - evens

evens = nums.reject do |n|
  n.odd? # Select the number for which this test is false
end
p evens

"this is the coolest thing in the whole world".split(" ").each do |w|
  if w.length.even?
    print w.upcase
  else
    print w.downcase
  end 
  print ' '
end

puts ""

s = "this is the coolest thing in the whole world".split(" ").map do |w|
  if w.length.odd?
    w.upcase
  else
    w.downcase
  end 
end.join(" ")

p s