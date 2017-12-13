#codewars 7kyu square_every_digit
puts "enter any digit number: "
number = gets.to_i
square_of_number = number.to_s.split('').map { |n| n.to_i ** 2}.join("").to_i
puts square_of_number
