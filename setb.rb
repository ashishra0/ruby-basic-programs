  #DCT0907
  #puts "Enter the number: "
  #number_find = gets.to_i

array = [-1, -1, 2, -1, -1, 3, 4, 5, 6, -1, 2, 3, 4, 4]
unique = array.uniq
count = []
unique_2 = unique.each do |i|
  count = array.count(i)
  if count > 1
puts "#{count} occurences"
else
  puts "no occurences"
end
end

#number = array.each {|n| n = n.uniq.count}
#puts number

#max_freq = number.uniq
#puts max_freq
#found = false

#puts number
