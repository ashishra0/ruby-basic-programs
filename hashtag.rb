#require 'pry'
puts "Enter a string / sentence"
sentence = gets.chomp
words = sentence.split(" ")
#binding.pry
output = "#"
i = 0
while i < words.length
  #binding.pry
  output = output + words[i].capitalize
  #binding.pry
  i += 1
  #binding.pry
end
puts output
