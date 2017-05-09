require 'pry'
class Restaurant
  attr_reader :id, :name #sets up all the reader methods
  attr_writer :id, :name #sets up all the writer methods

  def details
    "#{self.id} -#{self.name.capitalize}"
  end
end

r1 = Restaurant.new
r1.id = 1
r1.name = "1947"
#puts r1.details

r2 = Restaurant.new
r2.id = 2
r2.name = "Adigas"
#puts r2.details

r3 = Restaurant.new
r3.id = 3
r3.name = "Cool Joint"
#puts r3.details


class User
  attr_accessor :id, :name

end

user1 = User.new
user1.id = 1
user1.name = "Ashish"

user2 = User.new
user2.id = 2
user2.name = "Nidhi"

class Review
  attr_accessor :id, :user_id, :restaurant_id, :title  #sets up both the readers and Writers

  def details
    "id :#{self.id} - title : #{self.title} - user_id : #{self.user_id} - restaurant_id: #{self.restaurant_id}"
  end
end


review1 = Review.new
review1.id = 1
review1.title = "Delicious food"
review1.restaurant_id = r1.id
review1.user_id = user1.id
#puts review1.details

review2 = Review.new
review2.id = 2
review2.title = "Superfast service"
review2.restaurant_id = r2.id
review2.user_id = user2.id
#puts review2.details

review3 = Review.new
review3.id = 3
review3.title = "Wonderful time with the family"
review3.restaurant_id = r3.id
review3.user_id = user2.id
#puts review3.details

restaurants = []
users = []
reviews = []
binding.pry

restaurants.push(r1,r2)
users.push(user1,user2)
reviews.push(review1, review2 ,review3)
binding.pry

puts "*" * 50
puts "\t\t Listing Restaurants"
puts "*" * 50

restaurants.each_with_index do |restaurant, index|
  puts "#{index + 1}. #{restaurant.name}"
binding.pry

  #finding all reviews for this restaurant
  restaurant_reviews  = reviews.find_all{|review| review.restaurant_id == restaurant.id}
binding.pry
  puts "*******" + "Listing Reviews for #{restaurant.name} (#{restaurant_reviews.length})" + "*******"

  restaurant_reviews.each do |review|
binding.pry
    #fing the user who reviewed
    user = users.find{|user| user.id == review.user_id}

    puts "#{user.name} reviewed it as #{review.title}"
  end
end
