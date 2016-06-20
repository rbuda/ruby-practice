# create a function to take in a number and produce text as if a user needed to see what to write in a check.

TRANSLATE = {
  "0" => "zero",
  "1" => "one",
  "2" => "two",
  "3" => "three",
  "4" => "four",
  "5" => "five",
  "6" => "six",
  "7" => "seven",
  "8" => "eight",
  "9" => "nine",
  "10" => "ten",
  "11" => "eleven",
  "12" => "twelve",
  "13" => "thirteen",
  "14" => "fourteen",
  "15" => "fifteen",
  "16" => "sixteen",
  "17" => "seventeen",
  "18" => "eighteen",
  "19" => "nineteen",
  "20" => "twenty",
  "30" => "thirty",
  "40" => "forty",
  "50" => "fifty",
  "60" => "sixty",
  "70" => "seventy",
  "80" => "eighty",
  "90" => "ninety"
}

num = ARGV[0]

def string(num)
  length = num.split("").length
  case length
  when (0..2)
    if TRANSLATE[num].is_a? String
      puts TRANSLATE[num]
    else

  when (2..9)
    puts "nein"
  end
end

string(num)
