def magnitude(number)
  print "#{number} is "
  numConvert = number.to_s.split("")
  if numConvert.length > 10
    puts "Number is out of range."
  else
    if numConvert.length >= 4
      if numConvert.length >=7
        if numConvert.length >= 10
          print "#{numConvert[-12]}#{numConvert[-11]}#{numConvert[-10]} billion " #printing billions
        end
        print "#{numConvert[-9]}#{numConvert[-8]}#{numConvert[-7]} million " #printing millions
      end
      print "#{numConvert[-6]}#{numConvert[-5]}#{numConvert[-4]} thousand " #printing thousands
      hundreds = 
      print "#{numConvert[-3]}#{numConvert[-2]}#{numConvert[-1]} " unless (numConvert[-3] + numConvert[-2] + numConvert[-1]) === "000"
      ##account for the 1-001
    else numConvert.length < 4
      print number
    end
  end
  print "in English."
  # numRewritten = "#{numConvert[-12]}#{numConvert[-11]}#{numConvert[-10]},#{numConvert[-9]}#{numConvert[-8]}#{numConvert[-7]},#{numConvert[-6]}#{numConvert[-5]}#{numConvert[-4]},#{numConvert[-3]}#{numConvert[-2]}#{numConvert[-1]}"
  # puts numRewritten
end

magnitude(9123000)