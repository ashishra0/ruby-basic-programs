#This program displays the overall count of vowels appearing in a sentence or a word and also displays the vowels


puts "Enter a sentence: "
string = gets.chomp
chars = string.split("")
vowels = ["a", "e", "i", "o", "u"]
find_vowel = []
count = 0
# puts vowel
chars.each do |n|
  vowels.each do |vowel|
    if n == vowel
      find_vowel.push(vowel)
      count += 1
    end
  end
end

puts "***************************"
puts "Displaying count"
puts "***************************"
puts count
puts "***************************" "\n"
puts "Vowels will start to appear"
puts "***************************"
puts find_vowel.join
