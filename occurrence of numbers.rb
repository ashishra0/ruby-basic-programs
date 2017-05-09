#program to find the occurence of each integer in an array

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

