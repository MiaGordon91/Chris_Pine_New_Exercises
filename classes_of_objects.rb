=begin
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

=end


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
  puts "You are #{result.to_i} years old!"
