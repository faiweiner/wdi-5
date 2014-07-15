binary_string = 10101010111000101000100101
binary_array = []
binary_split = binary_string.to_s.split('').reverse
binary_split.each.with_index do |value, i|
  if value.to_i == 1
    print "Spot "
    print i
    print " has a 1 and its binary value is "
    print 2 ** i
    binary_array << 2 ** i
    puts "."
  else
    print "Spot "
    print i
    print " has a 0 and carries no binary value"
    puts "."
  end
end

print binary_array
puts ""
sum_all = binary_array.inject {|sum, x| sum + x }
puts "The total of this binary is #{sum_all}."
