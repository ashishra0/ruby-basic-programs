
def word_split(sentence)
  sentence.split(" ")
end

puts  "enter a sentence with five or more letter words: "
sentence = gets.chomp
words = word_split(sentence)
reverse_words = []

words.each do |word|
  reverse_words.push(word.length >= 5 ? word.reverse : word)
end

puts reverse_words.join(" ")
