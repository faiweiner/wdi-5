
#    ___                            ___  ___    _____                        
#   / _ \___ _    _____ ____  ___  / _/ |_  |  / ___/_ _____ ___ ___ ___ ____
#  / ___/ _ \ |/|/ / -_) __/ / _ \/ _/ / __/  / (_ / // / -_|_-<(_-</ -_) __/
# /_/   \___/__,__/\__/_/    \___/_/  /____/  \___/\_,_/\__/___/___/\__/_/   
                                                                           

# Prompt the user and read their answer.
print "What is 2 to the 16th power? "
input = gets.to_i

until (input == ( 2 ** 16 ))
	# print "Wrong answer, please try again. "
	if (input >= 2 ** 16)
		print "Wrong, guess lower. "
	else 
		print "Wrong, guess higher. "
	end
	input = gets.to_i
end

puts "Good job, you're a champ!"

