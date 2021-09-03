=begin

require 'yaml'

test_array = ["Give Quiche A Chance", "Mutants Out!", "Chameleonic Life-Forms, No Thanks"]

test_string = test_array.to_yaml

filename = 'RimmerTShirts.txt'

File.open filename, 'w' do |f|
  f.write test_string
end

read_string = File.read filename

read_array = YAML::load read_string

puts(read_string == test_string)
puts(read_array == test_array)

puts test_array.readlines()


#reading a txt file that's saved in the same directory
File.open("test.txt" , "r") do |file|
  puts file.readline()
  puts file.readlines()[2]
  #puts file.readchar()
  #puts file.read()
  #puts file.read().include?"Tuesday"
  end



#Another way to read from a file
  File.open("test.txt" , "r") do |file|

    for line in file.readlines()
      puts line
      end
    end


#Another way to read from a file
  file = File.open("test.txt" , "r")
    puts file.read

  file.close()



#Writing information out to a file
filename = "Quote.txt"

test = "Count your lucky stars!"

File.open(filename , "w") do |f|
    f.write test
end

read_test = File.read filename

puts read_test
puts (read_test == test) #new written file matches the test string

=end


#yaml - format for representing objects as strings. Use to save any kind of object
require 'yaml'

test_array = ['Autumn is here', 42, true, ['Another array']]

test_string = test_array.to_yaml

filename = "Array.txt"

File.open(filename , "w") do |f|
    f.write test_string
end

read_string = File.read filename

read_array = YAML::load read_string

puts read_string
puts read_array


puts test_string
