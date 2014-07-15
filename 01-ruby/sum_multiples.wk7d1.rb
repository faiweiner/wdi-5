def program(max, mult1, mult2)
  nat_num = 1..max.to_i
  new_num = []
  nat_num.each do |num|
    new_num << num if num % mult1 == 0 || num % mult2 == 0
  end
  print new_num.inject { |sum, a| sum + a }
end

# def sum_of_multiple(max, *multiples)
#   (1..max.to_i).to_a.inject(0) do |sum, num|
#     multiples.each do |mult|
#       sum += num if num % mult == 0
#     end
#   end
# end

program(10, 3, 5)
# sum_of_multiple(10, 3, 5)