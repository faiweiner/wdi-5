legacy = {
  1 => %W(A E I O U L N R S T),
  2 => %W(D G),
  3 => %W(B C M P),
  4 => %W(F H V W Y),
  5 => %W(K),
  8 => %W(J X),
  10 => %W(Q Z),
}

new_score = {}

legacy.each do |point, letters|
  letters.each do |letter|
    new_score[letter.downcase] = point
  end
end

print new_score