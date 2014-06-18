nums = [ 6, 5, 4, 3, 2, 1]
p nums[0]
p nums[1]
p nums.first
p nums.last
nums.push 505
nums.pop
nums << 808

p nums

strings = ["Welcome", "to"]
strings << "array country"

p strings.shift

strings.unshift ["Say", "Hello"]
p strings [0][1].upcase

p strings.flatten
p strings.reverse

p strings.pop
strings << "I"
strings.push "Say"

strings[1] = nil
p strings[1]

# strings.dele [1] ## COME BACK TO THIS

p strings

bros = []
p bros.length
bros[1001] = 'groucho'
p bros.length

ins = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p 1..10
p (1..100).to_a 
p (1...100).to_a

lottery_numbers = [44345454, 542542352, 54254322, 2542524352]
p lottery_numbers.sample

works = ["Book 1", "Book 2", "Book 30", "Book 15", "Book 35"]
p works
p works.include? "Book 30"
p works.include? "Book 15"

p works.index "Book 3"

index = works.index "Book 15"
p works[index]

a = ["Groucho", "Groucho", "Harpo", "Groucho", "Harpo"]
p a
a.uniq
a.uniq!
p a



