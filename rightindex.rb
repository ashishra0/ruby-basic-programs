require 'pry'
numbers = [1,2,3,4,3,2,1]
numbers = gets.chomp
number =[]
number = numbers.each_with_index do |n|
  binding.pry
  n = n.to_i
end
count = (number.count / 2).ceil
binding.pry
left_sum = number.first(count).sum
right_sum = number.last(count).sum
if (left_sum == right_sum) and count.odd?
  binding.pry
  puts count
else
 puts -1
end
