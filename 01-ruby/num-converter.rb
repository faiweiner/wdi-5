class Say  
  attr_accessor :num
  def initialize(num)
    @num = num
  end

  def num_split
    @num_array = @num.to_s.split('')
    @tenth_digit = @num_array[0].to_i
    @single_digit = @num_array[1].to_i
  end

  def in_english
    @num_array = []
    source_eat = []
    @num_array << @num
    source_single_digits = %w(zero one two three four five six seven eight nine ten)
    source_tenth_digits = [nil, "teen", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    source_eat[11, 12] = "eleven", "twelve"
    source_eat[15] = "fifteen"

    if @num <= 10
      eng_single_digits = source_single_digits[num]
      puts "#{eng_single_digits.capitalize} is a number."
    elsif @num == 11 || @num == 12 || @num == 15
      eng_double_digits = source_eat[num]
      puts "#{eng_double_digits.capitalize} is one of the exceptions (11, 12 and 15)."
    elsif @num >= 13 && @num <= 19
        num_split
        if @num == 13
          puts "#{@num} is thirteen."
        else
          puts "#{source_single_digits[@single_digit]}#{source_tenth_digits[@tenth_digit]}"
        end
    elsif @num >= 20 && @num <= 99
      num_split
      if @num_array[1].to_i == 0
        puts "#{@num} is #{source_tenth_digits[@tenth_digit]}."
      else
        puts "#{@num} is #{source_tenth_digits[@tenth_digit]}-#{source_single_digits[@single_digit]}."
      end
    elsif @num > 99
      puts "Code to be added for the number #{@num}."
    end
  end
end

Say.new(0).in_english
Say.new(10).in_english
Say.new(19).in_english
Say.new(100).in_english

