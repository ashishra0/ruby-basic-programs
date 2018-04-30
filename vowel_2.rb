# This program displays the number of times each vowel appears

puts "Enter a sentence: "
string = gets.chomp
chars = string.split("")
vowels = {"a" => 0, "e" => 0, "i" => 0, "o" => 0, "u" => 0}
vowels.each { |k,v| vowels[k] = chars.count(k) }
puts vowels
