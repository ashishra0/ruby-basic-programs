#codewars 5kyu convert string to camel case

puts "Enter any word in the following format:  (word_word_word) "
word = gets.chomp
# input = word.split('_').inject([]){ |buffer,e| buffer.push(buffer.empty? ? e : e.capitalize) }.join('')
input = word.split('_').collect(&:capitalize).join(' ')

puts "Your word is being processed...... "
puts "Here is the processed word: #{input}"
