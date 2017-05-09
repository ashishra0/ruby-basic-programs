#DCTf569 - Rot13
#alphabet[alphabet.index('')+ 13 - 26]
require 'pry'
def rot13(sentence)
alphabet = ('a'..'z').to_a
letters = sentence.split("") # ["t", "e", "s", "t"]
#new sentence = []
new_sentence = ""
binding.pry
letters.each do |letter|
  binding.pry
  if letter != ' ' # if there is no space in the sentence then find the index
  index_of = alphabet.index(letter.downcase)
  binding.pry
  char_index = index_of + 13 - 26
  #new_sentence.push(alphabet[char_index])
  new_letter = alphabet[char_index]
  new_sentence += (letter == letter.upcase) ? new_letter.
  upcase : new_letter
else # if there is a space in the sentence then add a empty space
  new_sentence += ' '
end
end
#return new_sentence
return new_sentence
end`

puts "Enter a sentence"
sentence = gets.chomp # "test"

result = rot13(sentence) #"test"
puts result
