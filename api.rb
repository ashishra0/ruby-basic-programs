require 'httparty'
puts "enter the first name"
first_name = gets.chomp
url = "https://gender-api.com/get?name="
api_key = "tzewTtooeUalFGcwGM"

response = HTTParty.get("https://gender-api.com/get?name=#{first_name}&key=#{api_key}")
puts response

puts "The gender of #{first_name} is #{response["gender"]}"
