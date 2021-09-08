
#one billion seconds

birthdate = Time.local(1991, 4,7)
todays_date = Time.new

#puts birthdate
#puts todays_date

seconds_alive = todays_date - birthdate
minus_billion = seconds_alive - 1000000000

#puts seconds_alive
#puts minus_billion
puts todays_date - minus_billion



#Happy Birthday

birth_year = ""
loop do
  puts "Please enter the year you were born: "
  birth_year = gets.chomp()
  if birth_year.length > 3 && birth_year != Integer
    break
  end
end

birth_month = ""

loop do
  puts "Please enter the month you were born using the following format:\n(e.g. April would be => 04)"
  birth_month = gets.chomp()
  if birth_month != Integer && birth_month.length > 1
    break
  end
end

birth_date = ""
loop do
  puts "Please enter the date you were born using the following format:\n(e.g. 4th would be => 04)"
  birth_date = gets.chomp()
  if birth_date != Integer && birth_date.length > 1
    break
  end
end

  todays_date = Time.new
  birth_day = Time.local(birth_year,birth_month,birth_date)

  result_numbers = todays_date - birth_day

  result = result_numbers/3.154e+7

  puts
  puts "You are #{result.to_i} years old!\nHere's a SPANK! for each birthday you've had..."
  puts
  (result.to_i).times {puts "SPANK!"}


#Party like it's...

def integer_roman(letters)

  rom_num = {"M"=> 1000, "D" => 500, "C" => 100, "L"=> 50, "X" => 10, "V" => 5,"I" => 1}

  answer = 0

  letters.each do |letter|
    if !rom_num.include?(letter)
      return "Please enter a valid string of roman numerals - M,D,C,L,X,V,I"
    end

    answer += rom_num[letter]
  end
   return answer
 end

puts "Enter random letters"
i = gets.chomp().upcase.split(//)
puts integer_roman(i)
