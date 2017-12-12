#odd,even,positive,negative numbers

real_number = [10,12,21,30,-10,80,-9,11,13,14,-18]
natural_number = [10,2,3,5,7,4,6]
positive = []
negative = []
even = []
odd = []
positive = real_number.select{|n| n >= 0}
negative = real_number.select{|n| n < 0}
even = natural_number.select{|n| n % 2 == 0}
odd = natural_number.select{|n| n % 2 == 1}
puts "positive numbers:  #{positive}"
puts "negative numbers:  #{negative}"
puts "even numbers:  #{even}"
puts "odd numbers: #{odd}"

#max,min,sum,average

number = [100,200,123,450,875,1]
max = []
min = []
sum = []
average = []
max = number.sort.last
min = number.sort.first
sum = number.inject(:+)
average = sum / number.length
puts "the maximum number is  #{max}"
puts "the minimum number is #{min}"
puts "the average of the numbers is #{average}"
puts "the sum of the number is #{sum}"
