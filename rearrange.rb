#require 'pry'
puts "enter a string: "
str1 = gets.chomp.split("")
puts = "enter a string to compare: "
str2 = gets.chomp.split("")
result =[]
str1.each do |str|
result.push(str2.include? str)
end
#binding.pry
result.include?(false) ? (puts false) : (puts true)
# => binding.pry
