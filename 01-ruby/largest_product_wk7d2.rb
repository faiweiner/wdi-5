def program(integer, length)
  number = integer.to_s.split('')
  num_count = number.count
  i = 0
    group_num = []
    length.times do
      group_num << number[i].to_i
      i += 1
    end
    puts "count of integer is #{num_count}."
    print group_num
    product = group_num[0] * group_num[1] * group_num[2]
    puts " product is #{product}."
    number.shift
    print number
end

program(123456789, 3)