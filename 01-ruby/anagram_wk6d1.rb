word = "listen"
array = %w(enlists google inlets banana)

array = array.seelct do |w|
  print w if word.each_char {}
end

p.each_char do |w|
  print w + " "
end

array.each do |word|
  word.each_char do |w|
    print w
  end
end
