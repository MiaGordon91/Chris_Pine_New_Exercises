#ARRAYS AND ITERATORS

#array

puts "Enter any words you like:"
words = []

while true
  word = gets.chomp
  if word == ""
    break
  end

#pushing word input into 'words' empty array
 words.push word

end
puts words.sort



#table of contents revisited

title = "Table of contents"

lines = [["Chapter 1:  Getting Started", 2],["Chapter 2:  Numbers" , 9],["Chapter 3:  Letters" , 13]]

puts title.center(50)

#num = 1

lines.each do |chapter|
  name = chapter[0]
  page = chapter[1]

first_section = name
second_section = "page: " + page.to_s

puts first_section.ljust(30) + second_section.rjust(15)
#num = num + 1

end
