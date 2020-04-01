# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all

puts "Creating restaurants..."

5.times {
  restaurant = { name: Faker::Restaurant.name,
                 address: Faker::Address.city,
                 phone_number: Faker::PhoneNumber,
                 category: ['chinese',
                            'italian',
                            'japanese',
                            'french',
                            'belgian'].sample }
  Restaurant.create!(restaurant)

  puts "Finished!"
  puts "Creating reviews"

  review = { content: Faker::TvShows::Friends.quote,
             rating: rand(0..5),
             restaurant_id: restaurant[:id] }
  Review.new(review)
  # we need `restaurant_id` to associate review with corresponding restaurant
}

puts "Finished!"
