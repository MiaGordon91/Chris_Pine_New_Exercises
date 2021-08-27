
#random_testing
def say_moo(repeated)
  puts "say mooo " * repeated
  'testing'
end

x = say_moo(3)
#puts x.capitalize
puts x


#3.times do
  #puts "hello"
#end


#Improved ask method
def ask question

    puts question
    reply = gets.chomp.downcase

  if reply == 'yes'
    return true
  elsif reply == 'no'
    return false
  else
  puts 'Please answer yes or no.'
end
end

puts 'Hello, and thank you for...'
puts

ask 'Do you like food?'



#Old-school Roman numerals


def roman_numerals(integer)

 numerals = {1 => "I",
 5 => "V", 10 =>"X", 50 => "L", 100 => "C",500 =>"D", 1000 => "M"}

 answer = ""

 numerals.keys.reverse.each do |n|

     while integer >= n do
       integer = integer - n
       answer = answer + numerals[n]
    end

 end
 return answer

end

puts "Enter a random number:"
i = gets.to_i
puts roman_numerals(i)



#Old school Roman_numerals2 - using integer division and modulus methods

def roman_numerals2(integer)

 numerals = {1 => "I",
 5 => "V", 10 =>"X", 50 => "L", 100 => "C",500 =>"D", 1000 => "M"}

 answer = ""

 numerals.keys.reverse.each do |n|

   answer = answer + numerals[n] * (integer/n)
   integer = integer % n

 end
 return answer

end

puts "Enter a random number:"
i = gets.to_i
puts roman_numerals2(i)




#random testing

def roman_numerals3

 numerals = {1 => "I", 4 => "IV",
 5 => "V", 10 =>"X", 50 => "L", 100 => "C",500 =>"D", 1000 => "M"}

 #answer = ""

  numerals.keys.reverse.each do |n|
  puts numerals[n]

end
end

 puts roman_numerals3
