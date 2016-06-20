# create a function to take in a number and produce text as if a user needed to see what to write in a check.

TRANSLATE = {
  1000000 => "million",
  1000 => "thousand",
  100 => "hundred",
  90 => "ninety",
  80 => "eighty",
  70 => "seventy",
  60 => "sixty",
  50 => "fifty",
  40 => "forty",
  30 => "thirty",
  20 => "twenty",
  19 => "nineteen",
  18 => "eighteen",
  17 => "seventeen",
  16 => "sixteen",
  15 => "fifteen",
  14 => "fourteen",
  13 => "thirteen",
  12 => "twelve",
  11 => "eleven",
  10 => "ten",
  9 => "nine",
  8 => "eight",
  7 => "seven",
  6 => "six",
  5 => "five",
  4 => "four",
  3 => "three",
  2 => "two",
  1 => "one"
}

def in_words(int)
  str = ""
  TRANSLATE.each do |num, name|
    if int == 0
      return str + "zero"
    elsif int == num
      return str + "#{name}"
    elsif int < 100 && int/num > 0
      return str + "#{name}" if int%num == 0
      return str + "#{name} " + in_words(int%num)
    elsif int/num > 0
      # puts "recursion"
      return str + in_words(int/num) + " #{name} " + in_words(int%num)
    end
  end
end

# puts in_words(4)
# puts in_words(44)
# puts in_words(440)
puts in_words(4040)
puts in_words(4004001)
