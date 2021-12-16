# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Restaurant.destroy_all
(1..5).each do |my_retaurant|
  my_restaurant = Restaurant.new(name: Faker::Restaurant.name, category: ["chinese", "italian", "japanese", "french", "belgian"].sample, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.cell_phone)
  my_restaurant.save
  the_review = Review.new(content: Faker::Restaurant.review, rating: (0..5).to_a.sample)
  the_review.restaurant = my_restaurant
  the_review.save
end
