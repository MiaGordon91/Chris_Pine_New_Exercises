#FLOW CONTROL
#Deaf Grandma
while true
puts "Hello me love"
response = gets.chomp

if response == response.upcase
  puts "HUH?! SPEAK UP, SONNY!"

elsif response != 'bye,bye,bye'
   puts "NO, NOT SINCE #{rand(1930..1950)}!"

else response == 'bye,bye,bye'
  puts "Don't leave yet!"
  break


end
end



#Leap_year - need help with this one!
puts "Enter a starting year:"
starting_year = gets.chomp.to_i

puts "Enter an ending year:"
ending_year = gets.chomp.to_i

year = starting_year

puts "Check it out these years are leap years:"

while year <= ending_year
  if year%4 == 0
    if year % 100 != 0 || year % 400 == 0
   puts year

end
end

 year = year + 1

end



colours = ["red", "yellow", "blue"]

colours.each do |colours|
  puts "I love " + colours
end
