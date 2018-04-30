# enter the number of characters
require './password'

puts "enter the minimum length for the password: "
min_length = gets.to_i

puts "enter the special characters: "
no_of_spec_chars = gets.to_i

while no_of_spec_chars > min_length do
  puts "Number cannot be greater than the Minimum Length (#{min_length}). Enter the special characters again: "
  no_of_spec_chars = gets.to_i
end

puts "enter the total number of integers for the password"
no_of_numbers = gets.to_i

while no_of_numbers > min_length do
  puts "Number cannot be greater than the Minimum Length (#{min_length}).
  Enter the total number of integers for the password again: "
  no_of_numbers = gets.to_i
end

password = Password.new(min_length.to_i, no_of_spec_chars.to_i, no_of_numbers.to_i).generate

puts "Here is your new password: #{password.split('').shuffle.join('')}"
