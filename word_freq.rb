languages = "ruby ruby c js js ruby"
words = languages.split(" ")
puts words.length
language_hash = {}
words.uniq.each do |word|
  language_hash[word] = words.count(word)
end
puts language_hash
language_hash.each do |language,count|
  puts "#{language} : #{count}"
end
