#class session day 13
numbers = [10,20,30,40,45,55]
puts numbers.find_all{|n| n.even?}.inject(:+)
name = "evil"
#associate proxy / daisy chaining
# the ability to chain methods in ruby is known as association proxy
puts name.reverse.capitalize


numbers =[]
10.times do
  numbers.push(Random.rand(0..9))
end

def number_formatter(numbers)
  "(#{numbers.slice(0,3).join()}) #{numbers.slice(3,3).join()}-#{numbers.slice(6,4).join()}"
end

result = number_formatter(numbers)
puts result
