def hash_tag_generator(sentence)
  words = sentence.split(" ")
  hash_tag ="#"

i = 0
while i < words.length
  hash_tag = hash_tag + words[i].capitalize
  if sentence.length > 140
    return false
  elsif words.length == 0
    return false
  end
  i += 1
  end
  return hash_tag
end

puts "enter a string / sentence"
sentence = gets.chomp

puts hash_tag_generator(sentence)
