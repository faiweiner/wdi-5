# .area function returns the length multiply by the width

def area (length, width)
	puts "The length is #{length}."
	puts "The width is #{width}."
	
	length * width
end

def volume (length, width, height)

	area(length, width) * height

end

def square(x)
	x * x
end

def cube (x)
	x ** 3
end

def name_tag_generator(firstname, lastname, gender, age)
	if gender == 'f'
		if age < 19
			puts "Miss #{firstname} #{lastname}"
		elsif age > 80
			puts "Old lady #{firstname} #{lastname}"
		else
			puts "Ms #{firstname} #{lastname}"
		end
	else
		puts "Mr. #{firstname} #{lastname}"
	end
end
