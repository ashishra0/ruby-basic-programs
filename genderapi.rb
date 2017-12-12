require 'httparty'

access_key = "pRPLCejozFwCHFbVCR"
puts "enter your firstname"
first_name = gets.chomp
response = HTTParty.get("http://gender-api.com/get?name=#{first_name}&key=#{access_key}")

puts "The gender of #{first_name} is #{response["gender"]}"
